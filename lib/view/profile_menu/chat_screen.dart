import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:nomadz/constants.dart';
import 'package:nomadz/widgets/custom_form_field.dart';

class chatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        body: Column(
          children: [
            Bubble(
              alignment: Alignment.center,
              color: kgreenColor,
              child: Text('TODAY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: Text('Hi, developer!'),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightBottom,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftBottom,
              child: Text('Hi, developer!'),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.center,
              nip: BubbleNip.no,
              color: Color.fromRGBO(212, 234, 244, 1.0),
              child: Text('TOMORROW',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              alignment: Alignment.center,
              color: kgreenColor,
              child: Text('TODAY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: Text('Hi, developer!'),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightBottom,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftBottom,
              child: Text('Hi, developer!'),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.center,
              nip: BubbleNip.no,
              color: Color.fromRGBO(212, 234, 244, 1.0),
              child: Text('TOMORROW',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              alignment: Alignment.center,
              color: kgreenColor,
              child: Text('TODAY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: Text('Hi, developer!'),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightBottom,
              color: kgreenColor,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftBottom,
              child: Text('Hi, developer!'),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.emoji_symbols_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.mic),
                            border: OutlineInputBorder(),
                            labelText: 'Message',
                          ),
                          onChanged: (text) {
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //UserName = nameController.text;
                          })),
                ],
              ),
            )
          ],
        ));
  }
}
