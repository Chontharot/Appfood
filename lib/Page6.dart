import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page6 extends StatefulWidget {
  Page6({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  int likeCount = 0;
  int dislikeCount = 0;
  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri url = Uri.parse('https://youtu.be/aYWI_emW8kk?si=GA_Ta_h1tXZn4iWm'); // ใส่ลิงก์ YouTube

    // ใช้ launchUrl แทน launch
    if (await canLaunch(url.toString())) {  // ตรวจสอบว่า URL สามารถเปิดได้หรือไม่
      await launchUrl(url); // เปิด URL
      print('เปิด URL สำเร็จ');
    } else {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  // ข้อมูลเมนูแรก
  final Map<String, String> menuDetails = {
    'title': 'ไข่นกกระทา',
    'image': 'data:image/jpeg;base64,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',
    'description': 'ขั้นตอนการทำ:\n'
  '1. ต้มไข่นกกระทาในน้ำเดือดประมาณ 4-5 นาที\n'
  '2. ปอกเปลือกไข่นกกระทาแล้วพักให้เย็น\n'
  '3. ผสมแป้งสาลี, แป้งข้าวโพด, ผงฟู, น้ำตาลทราย และเกลือ\n'
  '4. เติมนมสดและไข่ไก่ลงไปผสมจนแป้งเนียน\n'
  '5. ทอดไข่นกกระทาที่จุ่มแป้งในน้ำมันร้อนจนกรอบ\n'
  '6. คลุกขนมกับน้ำตาลทรายแล้วเสิร์ฟ\n',
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
                Navigator.pushNamed(context, '/page7');  
              },
              child: Text('ไปหน้าที่เจ็ด'),
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page6(title: 'หน้าที่6'),
    );
  }
}
