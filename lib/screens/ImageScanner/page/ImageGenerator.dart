import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class ImageGenerator extends StatefulWidget {
  @override
  _ImageGeneratorState createState() => _ImageGeneratorState();
}

class _ImageGeneratorState extends State<ImageGenerator> {
  File secilenDosya;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10.0,
              ),
              CircleAvatar(
                child: secilenDosya == null ? Text("Görüntü") : null,
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightGreen,
                radius: 150.0,
                backgroundImage:
                    secilenDosya != null ? FileImage(secilenDosya) : null,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        child: Text("Fotoğraf Yükle"),
                        onPressed: () {
                          secimFotoGoster(context);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        child: Text("Servere Gönder"),
                        onPressed: () {
                          serverFotoGonder(context);
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void secimFotoGoster(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text("Galeriden Fotoğraf Seç"),
                    onTap: () {
                      secimYukle(ImageSource.gallery);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Kameradan Fotoğraf Çek"),
                    onTap: () {
                      secimYukle(ImageSource.camera);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ));
  }

  void serverFotoGonder(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Container(
                width: 250,
                height: 50,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black12),
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.info, size: 40, color: Colors.red),
                    SizedBox(width: 8),
                    Text(
                      'Bir Hata Oluştu !!!',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ],
                ),
              ),
              content: Text(
                "Yapmak istediğiniz işlem, bazı teknik sorunlardan kaynaklı olarak çalışmamaktadır. \n\n Anlayışınız için Teşekkür ederim. \n😊",
                textAlign: TextAlign.center,
              ),
              actions: [
                TextButton(
                  child: Text('Kapat'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }

  void secimYukle(ImageSource source) async {
    final picker = ImagePicker();
    final secilen = await picker.getImage(source: source);

    setState(() {
      if (secilen != null) {
        secilenDosya = File(secilen.path);
      }
    });
  }
}
