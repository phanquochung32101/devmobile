import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Nền trắng
      backgroundColor: Colors.white,

      // AppBar với nút back ở bên trái, nút edit (pencil) bên phải
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Xử lý sự kiện quay lại
            },
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              icon: const Icon(Icons.edit, color: Colors.black),
              onPressed: () {
                // Xử lý sự kiện chỉnh sửa
              },
            ),
          ),
        ],
      ),


      // Nội dung chính giữa
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ảnh đại diện hình tròn
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/anh1.jpg'),
            ),
            const SizedBox(height: 20),

            // Tên người dùng
            const Text(
              'Phan Quốc Hưng',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),

            // Địa chỉ người dùng
            const Text(
              'Bình Dương, VN',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
