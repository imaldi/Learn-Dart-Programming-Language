enum JenisKelamin { L, P }

class Siswa {
  final String nama;
  // getter ini untuk ngedapetin data objek tapi kita manipulasi dulu
  String get namaDenganJenisKelamin {
    var panggilan = jk == "L" ? "Siswa" : "Siswi";
    return "$panggilan $nama";
  }

  String jk;
  // getter ini untuk masukin data ke objek tapi kita manipulasi dulu
  set setJKwithEnum(JenisKelamin jenisKelamin) {
    this.jk = jenisKelamin == JenisKelamin.L ? "L" : "P";
  }

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

  print(siswa.namaDenganJenisKelamin);
}
