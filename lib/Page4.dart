// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page4 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_super_parameters
  Page4({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
    int likeCount = 0;
  int dislikeCount = 0;
  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri url = Uri.parse('https://youtu.be/5M8APJeE1qE?si=Mr09z9lOpO-eR5eZ'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    if (await canLaunch(url.toString())) {  // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ปลาทอด',
    'image': 'data:image/jpeg;base64,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',
    'description':  'วิธีทำ:\n'
  '1. เตรียมปลาก่อนทอด: ทำความสะอาดปลาและคลุกเกลือ, พริกไทย, น้ำปลา\n'
  '2. ทุบกระเทียมและคลุกเคล้ากับปลา (ถ้าต้องการกลิ่นหอม)\n'
  '3. ใส่น้ำมันพืชในกระทะตั้งไฟจนร้อน\n'
  '4. คลุกปลากับแป้งข้าวโพดหรือแป้งทอดกรอบให้ทั่วตัวปลา\n'
  '5. ทอดปลาให้สุกจนมีสีทองกรอบ\n'
  '6. ทอดจนปลามีสีทองกรอบทั้งสองด้าน ใช้กระดาษทิชชูซับน้ำมัน\n\n',
    'price': '190 บาท',
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
                Navigator.pushNamed(context, '/page5');  
              },
              child: Text('ไปหน้าที่ห้า'),
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
      home: Page4(title: 'หน้าที่4'),
    );
  }
}
