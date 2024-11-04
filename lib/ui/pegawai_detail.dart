import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pegawai")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Pegawai : ${widget.pegawai.namaPegawai}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "tanggal lahir : ${widget.pegawai.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "nomor telepon : ${widget.pegawai.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "email : ${widget.pegawai.email}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "password : ${widget.pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
