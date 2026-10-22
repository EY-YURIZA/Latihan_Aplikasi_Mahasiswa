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
      //ubh judul ny
      title: 'Aplikasi Mahasiswa',
      // pake mode malam
      themeMode: ThemeMode.dark,
      //seed ny pke wrna hijau
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      // nh klo ini buat darkthem ny 
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      
      // pke class ProfilePage buat home ny
      // jdi widget ny gnti jdi profile page
      home: const ProfilePage(), 
    );
  }
}

// klo ini baru class ProfilePage
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // nh ini icon yg kmren
          leading: const Icon(Icons.access_alarm),
          actions: const [
            Icon(Icons.accessibility_new),
            Icon(Icons.man_2_outlined),
            Icon(Icons.account_balance_wallet_sharp),
          ],
          // app bar gnti ke dhsboard mhsiswa
          title: const Text('Dashboard Mahasiswa'),
          backgroundColor: Colors.green, // warna background hijau
          foregroundColor: Colors.white, // judul dan icon jadi putih 
        ),
        //teks dtengah gnti pke nama sndiri
        body: const Center(
          child: Text(
            "Aditya Ramadhan Khiang",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
    );
  }
}