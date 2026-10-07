import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuUtama(),
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B8DEF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              // Ganti dengan Image.asset('assets/logo.png', height: 140)
              // kalau kamu punya gambar clipboard-nya
              const Center(
                child: Icon(
                  Icons.assignment_turned_in,
                  size: 140,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Text('Menu Utama', style: TextStyle(fontSize: 24)),
              const Text(
                'Pilih peran untuk melanjutkan',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              _MenuItem(
                judul: '1. Pengguna',
                subjudul: 'Kelola tugas harian',
                onTap: () {},
              ),
              _MenuItem(
                judul: '2. Admin',
                subjudul: 'Kelola kategori perlu login',
                onTap: () {},
              ),
              _MenuItem(
                judul: '3. Keluar',
                subjudul: 'Akhiri sesi',
                onTap: () {},
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String judul;
  final String subjudul;
  final VoidCallback onTap;

  const _MenuItem({
    required this.judul,
    required this.subjudul,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Material(
        color: const Color(0xFFF5F5A8),
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(judul, style: const TextStyle(fontSize: 16)),
                Text(subjudul, style: const TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
