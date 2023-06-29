import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/homePage.dart';
import 'package:whatsapp_ui/waitingPage.dart';
import 'dart:async';

void main(List<String> args) {
  // Disable notification bar color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Make status bar transparent
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Pages(),
    );
  }
}


class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {

  bool showWaitingPage = true;

  Future<void> waitAndShow() async{
    await Future.delayed(const Duration(seconds: 1),(){
      setState(() {
        showWaitingPage = false;
      });
    });
  }


  Widget build(BuildContext context) {

    waitAndShow();
    return showWaitingPage? waiting() : HomePage();
  }
}