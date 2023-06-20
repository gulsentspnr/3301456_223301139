import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DbManager {
  Database _database;

  Future openDb() async {
    if (_database == null) {
      _database = await openDatabase(
        join(await getDatabasesPath(), "dtbase.db"),
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
            "CREATE TABLE bilgi(not_no INTEGER PRIMARY KEY autoincrement, baslik TEXT,not_yaz TEXT)",
          );
        },
      );
    }
  }

  Future<int> insertBilgi(Bilgiler bilgiler) async {
    try {
      await openDb();
      return await _database.insert('bilgi', bilgiler.toMap());
    } catch (e) {
      print('Hata: $e');
      return -1; // Hata durumunda -1 döndürüyoruz.
    }
  }

  Future<List<Bilgiler>> getBilgilerList() async {
    try {
      await openDb();
      final List<Map<String, dynamic>> maps = await _database.query('bilgi');
      return List.generate(maps.length, (i) {
        return Bilgiler(
          not_no: maps[i]['not_no'],
          baslik: maps[i]['baslik'],
          not_yaz: maps[i]['not_yaz'],
        );
      });
    } catch (e) {
      print('Hata: $e');
      return []; // Hata durumunda boş bir liste döndürüyoruz.
    }
  }

  Future<int> updateBilgi(Bilgiler bilgiler) async {
    try {
      await openDb();
      return await _database.update(
        'bilgi',
        bilgiler.toMap(),
        where: "not_no=?",
        whereArgs: [bilgiler.not_no],
      );
    } catch (e) {
      print('Hata: $e');
      return -1; // Hata durumunda -1 döndürüyoruz.
    }
  }

  Future<void> deleteBilgi(int not_no) async {
    try {
      await openDb();
      await _database.delete(
        'bilgi',
        where: "not_no=?",
        whereArgs: [not_no],
      );
    } catch (e) {
      print('Hata: $e');
    }
  }
}

class Bilgiler {
  int not_no;
  String baslik;
  String not_yaz;

  Bilgiler({this.baslik, this.not_yaz, this.not_no});

  Map<String, dynamic> toMap() {
    return {
      'baslik': baslik,
      'not_yaz': not_yaz,
    };
  }
}

class FBManager {
  Future<List<BilgilerFire>> getBilgilerList() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('Yazilar').get();

      List<Map<String, dynamic>> maps =
      snapshot.docs.map((doc) => doc.data()).toList();

      return List.generate(maps.length, (i) {
        return BilgilerFire(
          baslik: maps[i]['baslik'],
          icerik: maps[i]['icerik'],
        );
      });
    } catch (e) {
      print('Hata: $e');
      return []; // Hata durumunda boş bir liste döndürüyoruz.
    }
  }

  Future<void> insertBilgi(BilgilerFire bilgiler) async {
    try {
      await FirebaseFirestore.instance
          .collection("Yazilar")
          .doc(bilgiler.baslik)
          .set({'baslik':bilgiler.baslik,'icerik':bilgiler.icerik})
          .then((docRef) {
        print("veri eklendi.");
      });
    } catch (e) {
      print('Hata: $e');
    }
  }

  Future<void> updateBilgi(BilgilerFire bilgiler) async {
    try {
      await FirebaseFirestore.instance
          .collection("Yazilar")
          .doc(bilgiler.baslik)
          .update({'baslik':bilgiler.baslik,'icerik':bilgiler.icerik})
          .then((value) {
        print("veri güncellendi");
      });
    } catch (e) {
      print('Hata: $e');
    }
  }

  Future<void> deleteBilgi(BilgilerFire bilgiler) async {
    try {
      await FirebaseFirestore.instance
          .collection("Yazilar")
          .doc(bilgiler.baslik)
          .delete()
          .then((value) {
        print("veri silindi");
      });
    } catch (e) {
      print('Hata: $e');
    }
  }
}


class BilgilerFire {
  String baslik;
  String icerik;

  BilgilerFire({this.baslik, this.icerik});

  Map<String, dynamic> toMap() {
    return {
      'baslik': baslik,
      'icerik': icerik,
    };
  }
}

