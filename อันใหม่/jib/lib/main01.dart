import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';  
import 'Page4.dart';  
import 'Page5.dart';  
import 'Page6.dart';  
import 'Page7.dart'; 


void main() {
  runApp(MyApp());
}


// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'การใช้งาน Route',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',  // หน้าเริ่มต้น
      routes: {
        // เส้นทางเริ่มต้น "/"
        '/page1': (context) => Page1(
              title: 'หน้าที่ 1',
            ),
        // เส้นทาง "/page2"
        '/page2': (context) => Page2(
              title: 'หน้าที่ 2',
            ),
        // เส้นทาง "/page3"
        '/page3': (context) => Page3(
              title: 'หน้าที่ 3',
            ),
        // เส้นทาง "/page4"
        '/page4': (context) => Page4(
              title: 'หน้าที่ 4',
            ),
        // เส้นทาง "/page5"
        '/page5': (context) => Page5(
              title: 'หน้าที่ 5',
            ),
        // เส้นทาง "/page6"
        '/page6': (context) => Page6(
              title: 'หน้าที่ 6',
            ),
        // เส้นทาง "/page7"
        '/page7': (context) => Page7(
              title: 'หน้าที่ 7',
            ),
      },
    );
  }
}

