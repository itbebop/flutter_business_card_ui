import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 200,
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: CircleAvatar(
                          //backgroundImage: AssetImage('assets/images/kkong.jpg'),
                          foregroundImage: AssetImage('assets/images/kkong.jpg'),
                        )),
                    TextCard(
                      text: '한정만',
                      color: Colors.black,
                      fontSize: 70,
                    ),
                    TextCard(
                      text: 'flutter developer',
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 140,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Icon(Icons.star),
                        ),
                        TextCard(
                          color: Colors.black,
                          fontSize: 14,
                          text: 'instagram/kongchi121211/',
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Icon(Icons.phone),
                        ),
                        TextCard(
                          color: Colors.black,
                          fontSize: 20,
                          text: '+82(010)-1234-5678',
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Icon(Icons.email),
                        ),
                        TextCard(
                          color: Colors.black,
                          fontSize: 20,
                          text: 'abc123@gmail.com',
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const TextCard({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
