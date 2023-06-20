import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

import 'package:bulanut_mobile_v5/models/Data_class.dart';

class firebase_connect extends StatefulWidget {
  @override
  _firebase_connectState createState() => _firebase_connectState();
}

class _firebase_connectState extends State<firebase_connect> {
  final FBManager fbManager = new FBManager();
  final _baslikController = TextEditingController();
  final _notController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  BilgilerFire bilgiler;
  List<BilgilerFire> bilgilist;
  int updateIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Başlık'),
                    controller: _baslikController,
                    validator: (val) =>
                    val.isNotEmpty ? null : 'Boş Bırakılmaz!!!',
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Not'),
                    controller: _notController,
                    validator: (val) =>
                    val.isNotEmpty ? null : 'Boş Bırakılmaz!!!',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ),
                      onPressed: () {
                        setState(() {
                          _submitbilgi(context);
                        });
                      },
                      child: Container(
                        width: width * 0.9,
                        child: Text(
                          'Firebase Veri Ekle',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  FutureBuilder(
                    future: fbManager.getBilgilerList(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        bilgilist = snapshot.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: bilgilist == null ? 0 : bilgilist.length,
                          itemBuilder: (BuildContext context, int index) {
                            BilgilerFire bilg = bilgilist[index];
                            return Card(
                              child: Row(
                                children: [
                                  Container(
                                    width: width * 0.58,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Başlık: ${bilg.baslik}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0),
                                        ),
                                        Text(
                                          'Notunuz: ${bilg.icerik}',
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.edit),
                                      color: Colors.green,
                                      onPressed: () {

                                        _baslikController.text = bilg.baslik;
                                        _notController.text = bilg.icerik;
                                        bilgiler = bilg;
                                        updateIndex = index;
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.delete),
                                      color: Colors.red,
                                      onPressed: () {
                                        _deleteBilgi(bilg);
                                      }),
                                ],
                              ),
                            );
                          },
                        );
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _submitbilgi(BuildContext context) {
    if (_formKey.currentState.validate()) {
      if (bilgiler == null) {
        BilgilerFire bilg = new BilgilerFire(
          baslik: _baslikController.text,
          icerik: _notController.text,
        );
        fbManager.insertBilgi(bilg).then((not_no) => {
          _baslikController.clear(),
          _notController.clear(),
        });
      } else {
        bilgiler.baslik = _baslikController.text;
        bilgiler.icerik = _notController.text;
        fbManager.updateBilgi(bilgiler).then((not_no) => {
          setState(() {
            bilgilist[updateIndex].baslik = _baslikController.text;
            bilgilist[updateIndex].icerik = _notController.text;
          }),
          _baslikController.clear(),
          _notController.clear(),
          bilgiler = null
        });
      }
    }
  }

  void _deleteBilgi(BilgilerFire bilg) {
    print(bilg.baslik);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Veri Silme'),
        content: Text('Bu veriyi silmek istediğinizden emin misiniz?'),
        actions: [
          TextButton(
            child: Text('İptal'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text('Sil'),
            onPressed: () {
              try {
                FirebaseFirestore.instance
                    .collection("Yazilar")
                    .doc(bilg.baslik)
                    .delete()
                    .then((value) {
                  print("veri silindi");
                });
              } catch (e) {
                print('Hata: $e');
              }
              setState(() {
                bilgilist.remove(bilg);
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _updateBilgiAlert(BilgilerFire bilg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Veri Güncelleme'),
        content: Text('Veriyi güncellerken bir hata oluştu. Yeni veri eklemek ister misiniz?'),
        actions: [
          TextButton(
            child: Text('Hayır'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text('Evet'),
            onPressed: () {
              _baslikController.text = '';
              _notController.text = '';
              bilgiler = null;
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}
