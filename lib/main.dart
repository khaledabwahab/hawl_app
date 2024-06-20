import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: Text('تطابق صورة'),
      backgroundColor: Colors.indigo[700],
    ),
    body: Imagepage(),
  )));
}

///////////////////////////////////////////////////////
//stless( shortcut)
//class imagepage extends StatelessWidget {
// @override
///////////////////////////////////////////////////////
///
///
//stful ( shortcut)
class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  //Varuiabls
  int LeftImageNumber = 1;
  int RightImageNumber = 1;

//Functions
  void photoround() {
    LeftImageNumber = Random().nextInt(8) + 1;
    RightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LeftImageNumber == RightImageNumber
              ? 'Great job *-* '
              : 'حاول مرة اخري ',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    //print('you click me -_-');
                    setState(() {
                      photoround();
                    });
                  },
                  child: Image.asset('images/image-$LeftImageNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    //print('you click me -_-');
                    setState(() {
                      photoround();
                    });
                  },
                  child: Image.asset('images/image-$RightImageNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
