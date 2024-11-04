import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Pegawai : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "nomor rm : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "tanggal lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "nomor telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "alamat : ${widget.pasien.alamat}",
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
