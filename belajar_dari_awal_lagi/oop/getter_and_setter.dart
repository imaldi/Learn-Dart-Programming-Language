import 'extension_methods_mixins_static.dart';

enum JenisKelamin { L, P }

class Siswa {
  String nama;
  // getter ini untuk ngedapetin data objek tapi kita manipulasi dulu
  String get namaDenganJenisKelamin {
    var panggilan = jk == "L" ? "Siswa" : "Siswi";
    return "$panggilan $nama";
  }

  set setJKwithEnum(JenisKelamin jenisKelamin) {
    this.jk = jenisKelamin == JenisKelamin.L ? "L" : "P";
  }

  String jk;
  // getter ini untuk masukin data ke objek tapi kita manipulasi dulu

  final int umur;
  Siswa(this.nama, this.jk, this.umur);
}

void main(List<String> args) {
  var siswa = Siswa("Aldi", "K", 20);
  // seakan2 manggil property / instance variable, padahal cuma bisa utk nge-set
  print("Before ${siswa.jk}");

  siswa.jk = "NASKJndkjahda";

  print("Before 2 ${siswa.jk}");

  siswa.setJKwithEnum = JenisKelamin.L;

  print("After ${siswa.jk}");

  // print(siswa.setJKwithEnum); // ga bisa make setter untuk ngakses, cuma bisa setting
  print(siswa.namaDenganJenisKelamin);
  siswa.nama = "Majid";
  Karyawan karyawan = Karyawan("nama", JenisKelamin.L, 33);
  // karyawan._ // ga bisa manggil private method/ variable kalau beda file
  // siswa.namaDenganJenisKelamin = "ajslkjs"; // ga akan bisa, karena ini cuma ngambil nilai
}
