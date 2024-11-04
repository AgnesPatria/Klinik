import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pegawai")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Tania"),
              ),
            ),
            onTap: () {
              Pegawai peGawai = new Pegawai(
                  id: "73782",
                  namaPegawai: "Tania",
                  tanggal_lahir: "18 September 2002",
                  nomor_telepon: "0868239217253",
                  email: "Taniut@gmail.com",
                  password: "Taniut123");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: peGawai)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Savero"),
              ),
            ),
            onTap: () {
              Pegawai peGawai = new Pegawai(
                  id: "8979",
                  namaPegawai: "Savero",
                  tanggal_lahir: "20 Oktober 2001",
                  nomor_telepon: "08217283918281",
                  email: "svero@gmail.com",
                  password: "vero123");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: peGawai)));
            },
          ),
        ],
      ),
    );
  }
}
