import 'package:flutter/material.dart';



class waiting extends StatelessWidget {
  const waiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 20, 38, 53),
      // body: Image.network('https://logos-download.com/wp-content/uploads/2016/03/WhatsApp_Icon.png'),
      body: Center(child: Image.asset('assets/icon.png',width: 140)),
    );
  }
}