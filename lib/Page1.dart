// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  // ignore: use_super_parameters
  const Page1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  // ฟังก์ชันสำหรับเปิด URL
  int likeCount = 0;
  int dislikeCount = 0;
  void _launchYouTube() async {
    final Uri url = Uri.parse(
        'https://youtu.be/chwvx3YdXfA?si=E5Sly7QWF-Ly5wet'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    // ignore: deprecated_member_use
    if (await canLaunch(url.toString())) {
      // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ข้าวผัด',
    'image':
        'data:image/jpeg;base64,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',
    'description': 'วิธีทำ:\n'
        '   1. ใส่น้ำมันในกระทะ และเปิดไฟกลาง\n'
        '   2. ใส่กระเทียมสับลงไปผัดจนหอม\n'
        '   3. ตอกไข่ใส่กระทะแล้วคนให้ไข่สุก\n'
        '   4. ใส่ข้าวสุกลงไปในกระทะ ผัดให้เข้ากัน\n'
        '   5. ใส่ซอสถั่วเหลือง, ซีอิ๊วขาว, น้ำตาล และพริกไทย\n'
        '   6. ผัดจนข้าวเข้ากับเครื่องปรุงและไข่\n'
        '   7. เติมผักตามชอบ ผัดต่ออีกเล็กน้อยจนผักสุก\n'
        '   8. เสิร์ฟข้าวผัดไข่ใส่จาน โรยด้วยต้นหอมสับ',
    'price': '50 บาท',
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
                Navigator.pushNamed(context, '/page2'); // ไปยังหน้า page2
              },
              child: Text('ไปหน้าที่สอง'),
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
              onPressed: _launchYouTube, // เมื่อกดปุ่มจะเปิด YouTube
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(title: 'หน้าแรก'),
    );
  }
}
