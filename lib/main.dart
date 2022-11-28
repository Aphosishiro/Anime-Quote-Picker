import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const QuotePicker());
}

class QuotePicker extends StatefulWidget {
  const QuotePicker({Key? key}) : super(key: key);

  @override
  State<QuotePicker> createState() => _QuotePickerState();
}

int changequote = 1;

class _QuotePickerState extends State<QuotePicker> {
  void button1() {
    setState(() {
      changequote = Random().nextInt(3) + 1;
    });
  }

  void button2() {
    setState(() {
      changequote = Random().nextInt(3) + 4;
    });
  }

  void button3() {
    setState(() {
      changequote = Random().nextInt(3) + 7;
    });
  }

  void button4() {
    setState(() {
      changequote = Random().nextInt(3) + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/quote$changequote.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  child: Text(
                    "ANIME QUOTE PICKER",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          )),
                      onPressed: () {
                        button1();
                      },
                      child: const Text(
                        "Minato",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          )),
                      onPressed: () {
                        button2();
                      },
                      child: const Text(
                        "Madara",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          )),
                      onPressed: () {
                        button3();
                      },
                      child: const Text(
                        "Luffy",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          )),
                      onPressed: () {
                        button4();
                      },
                      child: const Text(
                        "Kirito",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
