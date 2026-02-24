import 'package:bridge1/donwloded.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bridge',
      // استدعاء الصفحة مباشرة بدون ثيم
      //home: HomeScreen(), 
     // home: SignToTextScreen(),
     
     home:  TranslationResultPage(),    
     ),
  );
}