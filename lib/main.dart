import 'package:flutter/material.dart';
import 'package:info_upi/CivitasAkademik.dart';
import 'Berita.dart';
import 'Fakultas.dart';
import 'Fasilitas.dart';
import 'CivitasAkademik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int idx = 0; //index yang aktif
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Universitas Pendidikan Indonesia")),
      body: case2(idx),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.red,
          unselectedItemColor: Color.fromARGB(248, 183, 177, 176),
          onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: 'Berita'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Fakultas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), label: "Fasilitas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Civitas Akademik"),
          ]),
    ));
  }

  case2(int idx) {
    switch (idx) {
      case 0:
        {
          return const Berita();
        }

      case 1:
        {
          return const Fakultas();
        }

      case 2:
        {
          return const Fasilitas();
        }

      case 3:
        {
          return const CivitasAkademik();
        }
    }
  }
}
