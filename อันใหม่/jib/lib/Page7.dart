// ignore_for_file: deprecated_member_use, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page7 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_super_parameters
  Page7({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  int likeCount = 0;
  int dislikeCount = 0;
  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri url = Uri.parse('https://youtu.be/ZFKo88bRXQ0?si=C0hYRib26EY-P18w'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    if (await canLaunch(url.toString())) {  // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ขนมไข่',
    'image': 'data:image/jpeg;base64,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',
    'description':  'ขั้นตอนการทำ:\n'
  '1. ตีไข่ไก่ให้เข้ากันจนไข่ขาวและไข่แดงผสมดี\n'
  '2. ใส่น้ำตาลทรายลงไปในไข่และตีให้เข้ากัน\n'
  '3. ใส่แป้งสาลีและผงฟูลงไป ผสมจนเนื้อแป้งเนียน\n'
  '4. ใส่น้ำมันพืชลงไปผสมให้เข้ากัน\n'
  '5. ปั้นแป้งเป็นลูกกลมแล้วทอดในน้ำมันร้อนจนกรอบ\n'
  '6. คลุกน้ำตาลทรายเมื่อขนมเย็นลง\n'
  '7. เสิร์ฟขนมไข่พร้อมทาน\n',
    'price': '100 บาท',
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
                Navigator.pushNamed(context, '/');  
              },
              child: Text('ไปหน้าแรก'),
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
      home: Page7(title: 'หน้าที่7'),
    );
  }
}
