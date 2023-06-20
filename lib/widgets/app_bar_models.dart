import 'package:flutter/material.dart';

enum Options { Turkish, English }

BuildContext context2;

AppBarHomePage(BuildContext context) {
  context2 = context;
  return AppBar(
    backgroundColor: Colors.blueGrey.shade600,
    title: Text("B U L A N U T"),
      automaticallyImplyLeading:false,
    actions: <Widget>[
      PopupMenuButton<Options>(
        offset: const Offset(0, 35),
        onSelected: selectProcess,
        child: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey.shade700,
          ),
          label: Text(
            "Lang",
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.language,
            color: Colors.white,
          ),
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
          PopupMenuItem<Options>(
            value: Options.Turkish,
            child: TextButton.icon(
              label: Text("Türkçe"),
              // icon: Icon(
              //   Icons.language_outlined,
              //   color: Colors.black38,
              // ),
              icon: CircleAvatar(
                radius: 20,
                child: ClipOval(
                  child: Image(
                    image:AssetImage("images/flag/turkey.png"),
                    fit: BoxFit.cover,
                    height: 58,
                    width: 58,
                  ),
                ),
              ),
            ),
          ),
          PopupMenuItem<Options>(
            value: Options.English,
            child: TextButton.icon(
              label: Text("English"),
              icon: CircleAvatar(
                radius: 20,
                child: ClipOval(
                  child: Image(
                    image:AssetImage("images/flag/united-kingdom.png"),
                    fit: BoxFit.cover,
                    height: 58,
                    width: 58,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

void selectProcess(Options options) {
  switch (options) {
    case Options.Turkish:
      break;
    case Options.English:
      _popupDialog(context2);
      break;
    default:
      break;
  }
}

void _popupDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Bu Özellik Şimdilik Kullanılmamaktadır 😞'),
          content: Text(
              'İlerleyen zamanlarda aktif hale gelecektir. \n\nAnlayışınız için Teşekkürler'),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Kapat')),
          ],
        );
      });
}
