import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Gunner"),
              ),
            ),
            onTap: () {
              Pasien paSien = new Pasien(
                  id: "2678",
                  namaPasien: "Damianus",
                  tanggal_lahir: "9 Oktober 2004",
                  nomor_telepon: "082178293521",
                  alamat: "Surabaya",
                  nomor_rm: "9283744");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: paSien)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Rayden"),
              ),
            ),
            onTap: () {
              Pasien paSien = new Pasien(
                  id: "8921",
                  namaPasien: "Rayden",
                  tanggal_lahir: "8 Juli 2006",
                  nomor_telepon: "082937281925",
                  alamat: "Yogyakarta",
                  nomor_rm: "263718");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: paSien)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Sambora"),
              ),
            ),
            onTap: () {
              Pasien paSien = new Pasien(
                  id: "837281",
                  namaPasien: "Sambora",
                  tanggal_lahir: "30 April 2005",
                  nomor_telepon: "092836178292",
                  alamat: "Malang",
                  nomor_rm: "272618");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: paSien)));
            },
          ),
        ],
      ),
    );
  }
}
