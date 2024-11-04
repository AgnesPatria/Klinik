class Pasien {
  String? id;
  String namaPasien;
  String nomor_rm;
  String tanggal_lahir;
  String nomor_telepon;
  String alamat;

  Pasien(
      {this.id,
      required this.namaPasien,
      required this.tanggal_lahir,
      required this.nomor_telepon,
      required this.nomor_rm,
      required this.alamat});
}
