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
      
      // Latihan 1: Ubah title menjadi 'Aplikasi Mahasiswa'
      title: 'Aplikasi Mahasiswa',
      
      // Latihan 4: Ubah themeMode menjadi ThemeMode.dark
      themeMode: ThemeMode.dark,
      
      // Latihan 2: Ganti seedColor menjadi Colors.green
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      
      // Latihan 4: Tambahkan darkTheme 
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      
      // Latihan 5: Gunakan class ProfilePage sebagai halaman home
      // (MyWidget sekarang diganti namanya jadi ProfilePage)
      home: const ProfilePage(), 
    );
  }
}

// Latihan 5: Buat class ProfilePage
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Icon bawaan dari kode belajarmu tetap dipertahankan
          leading: const Icon(Icons.access_alarm),
          actions: const [
            Icon(Icons.accessibility_new),
            Icon(Icons.man_2_outlined),
            Icon(Icons.account_balance_wallet_sharp),
          ],
          
          // Latihan 3: Ubah judul AppBar menjadi 'Dashboard Mahasiswa'
          title: const Text('Dashboard Mahasiswa'),
          backgroundColor: Colors.green, // warna background hijau
          foregroundColor: Colors.white, // judul dan icon jadi putih biar rapi
        ),
        
        // Latihan 1: Teks di tengah menjadi nama masing-masing
        // (Column "SAYA AKAN LAWAN" diganti jadi Center sesuai instruksi)
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