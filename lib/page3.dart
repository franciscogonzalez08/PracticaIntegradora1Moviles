import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // Variables
  var backgroundColor1 = Colors.grey[200];
  var backgroundColor2 = Colors.black;
  var backgroundColor3 = Colors.grey[200];

  var fontColor1 = Colors.black;
  var fontColor2 = Colors.white;
  var fontColor3 = Colors.black;

  String? emote = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 3'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor1),
            ),
            onPressed: () {
              emote = '( ͡° ͜ʖ ͡°)';
              Navigator.of(context).pop(emote);
            },
            child: Text(
              '( ͡° ͜ʖ ͡°)',
              style: TextStyle(
                color: fontColor1,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor2),
            ),
            onPressed: () {
              emote = 'ಠ╭╮ಠ';
              Navigator.of(context).pop(emote);
            },
            child: Text(
              'ಠ╭╮ಠ',
              style: TextStyle(
                color: fontColor2,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor3),
            ),
            onPressed: () {
              emote = '◉_◉';
              Navigator.of(context).pop(emote);
            },
            child: Text(
              '◉_◉',
              style: TextStyle(
                color: fontColor3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
