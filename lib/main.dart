// import 'package:flutter/cupertino.dart';
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

class _QuotePickerState extends State<QuotePicker> {
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/quote11.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Padding(
                   padding:  EdgeInsets.fromLTRB(20, 20, 0, 10),
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
                    width: 120,
                     child: ElevatedButton(
                      onPressed: () {}, 
                      child: const Text(
                      "Minato",
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
