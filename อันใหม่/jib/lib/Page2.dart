// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page2 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_super_parameters
  Page2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
   int likeCount = 0;
  int dislikeCount = 0;
  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri url = Uri.parse('https://youtu.be/VUHOUQbLCzE?si=yLLTCDE8k9USLVK8'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    if (await canLaunch(url.toString())) {  // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ก๋วยเตี๋ยว',
    'image': 'data:image/jpeg;base64,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',
    'description': 'วิธีทำก๋วยเตี๋ยวหมูน้ำใส:\n\n'
  '1. เตรียมเส้นก๋วยเตี๋ยว:\n'
  '   - ต้มน้ำเดือดในหม้อแล้วใส่เส้นก๋วยเตี๋ยวลงไป ต้มตามเวลาในแพ็กเกจ (ประมาณ 2-3 นาที) จนเส้นนุ่ม แล้วกรองน้ำออก\n'
  '   - ล้างเส้นให้สะอาดด้วยน้ำเย็นเพื่อไม่ให้เส้นติดกัน\n\n'
  '2. ทำหมูสับ (หรือหมูชิ้น):\n'
  '   - ตั้งกระทะบนไฟกลาง ใส่น้ำมันพืชลงไป\n'
  '   - ใส่กระเทียมสับลงไปผัดจนหอม แล้วใส่หมูสับลงไปผัดจนสุก\n'
  '   - ปรุงรสด้วยซีอิ๊วขาว, ซอสถั่วเหลือง, น้ำตาล และพริกไทย\n'
  '   - ผัดให้เข้ากันจนหมูสุกและมีรสชาติ\n\n'
  '3. ทำน้ำซุป:\n'
  '   - ใส่น้ำซุปหมู (หรือใช้น้ำเปล่า) ลงในหม้อ แล้วใส่รากผักชีที่หั่นแล้วลงไปต้ม\n'
  '   - ต้มด้วยไฟกลางประมาณ 10 นาที เพื่อให้น้ำซุปหอมและรสชาติกลมกล่อม\n'
  '   - ปรุงรสด้วยน้ำปลา หรือซีอิ๊วขาว เพิ่มรสชาติให้เหมาะสม'
  ,
    'price': '80 บาท',
  };
  void _incrementLike() {
    setState(() {
      likeCount++;
    });
  }

  void _incrementDislike() {
    setState(() {
      dislikeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ปุ่มไปยังหน้าอื่น
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');  // ไปยังหน้า page2
              },
              child: Text('ไปหน้าที่สาม'),
            ),
            SizedBox(height: 20),
            
            // แสดงรายละเอียดของเมนู
            Text(
              'รายละเอียดเมนู: ${menuDetails['title']}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(
              menuDetails['image']!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'คำอธิบาย: ${menuDetails['description']}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'ราคา: ${menuDetails['price']}',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: _incrementLike,
                    ),
                    Text('ถูกใจ: $likeCount'),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_down),
                      onPressed: _incrementDislike,
                    ),
                    Text('ไม่ถูกใจ: $dislikeCount'),
                  ],
                ),
              ],
            ),
            // ปุ่มเปิด YouTube
            ElevatedButton(
              onPressed: _launchYouTube,  // เมื่อกดปุ่มจะเปิด YouTube
              child: Text('เปิด YouTube'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page2(title: 'หน้าที่2'),
    );
  }
}
