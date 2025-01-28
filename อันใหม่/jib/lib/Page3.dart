// ignore_for_file: file_names, library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Page3({super.key, required this.title});

  final String title;

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
    int likeCount = 0;
  int dislikeCount = 0;
  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri url = Uri.parse('https://youtu.be/tF196vSo-oQ?si=JylV5Cc_jRimSEjI'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    if (await canLaunch(url.toString())) {  // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ข้าวมันไก่',
    'image': 'data:image/jpeg;base64,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',
    'description': 'วิธีทำข้าวมัน:\n'
  '1. ล้างข้าวหอมมะลิให้สะอาดจนกว่าน้ำจะใส แล้วสะเด็ดน้ำ\n'
  '2. ผัดข้าวกับกระเทียมและขิงในน้ำมันพืช\n'
  '3. หุงข้าวด้วยน้ำสะอาดและเกลือ\n\n'
  'วิธีทำไก่ต้ม:\n'
  '1. ต้มน้ำพร้อมขิง, กระเทียม, รากผักชี และเกลือ\n'
  '2. ต้มไก่ด้วยไฟอ่อนจนสุก\n\n'
  'วิธีทำน้ำจิ้ม:\n'
  '1. โขลกพริกขี้หนู, กระเทียม, และขิง\n'
  '2. ผสมส่วนผสมทั้งหมดให้เข้ากัน\n\n'
  'การเสิร์ฟ:\n'
  '1. ตักข้าวมันลงจาน\n'
  '2. วางไก่ต้มบนข้าวมัน\n'
  '3. เสิร์ฟพร้อมน้ำจิ้มขิง-พริกขี้หนู',
    'price': '55 บาท',
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
                Navigator.pushNamed(context, '/page4');  
              },
              child: Text('ไปหน้าที่สี่'),
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
      home: Page3(title: 'หน้าที่3'),
    );
  }
}
