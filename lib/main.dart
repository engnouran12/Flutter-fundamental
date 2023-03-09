import 'package:flutter/material.dart';


import 'Log__in.dart';
import 'message_screen.dart';





void main() {
  
  
 
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Messanger()
    );
  }
}
