// extension method s
import 'getter_and_setter.dart';

String a = "abscac";
String b = "Aldi Irsan Majid";

// bikin fitur tambahan dari suatu class, yang bukan kita buat
// karena kalau kita edit secara langsung di file class tadi, bisa jadi
// kodingan yg ga bisa kita ubah itu, udah di ubah sama org yg buat
extension GivePeriod on String {
  String givePeriod() {
    return "${this}.";
  }

  String formatToLowerCase() {
    return "${this.toLowerCase()}";
  }

  // String formatToCamelCase() {
  //   // kita split dengan spasi ==> array
  //   // kita capitalize tiap katanya kecuali kata pertama ==> ignore element pertama
  //   // kita join lagi sebagai string
  //   // kita return
  // }
  // ···
}

// mixins => cara keren copas code

// ga bisa (karena ga perlu) berdiri sendiri (instantiate)
mixin Publishing {
  String publisher = "Siapalah";
  publish() {
    print("Publish Karya Ini ke publik");
  }
  // Publishing(); // mixins ga punya constructor
}

class Anime with Publishing {}

class Manga with Publishing {}

/// learn about static member
class Karyawan {
  static int jumlahKaryawan = 0; // static member variable
  String nama;
  JenisKelamin jk;
  int umur;
  Karyawan(this.nama, this.jk, this.umur) {
    // ini constructor initialization block
    _incrementKaryawan();
  }

  _methodRandom() {}

  static _incrementKaryawan() {
    jumlahKaryawan++;
  }
}

void main(List<String> args) {
  print(a.givePeriod());
  print(b.formatToLowerCase());

  // var a = Publishing();
  // bedanya dengan class biasa apa ya??
  Publishing hiburan;
  var manga = Manga();
  // manga.publish() // ga di kasih mixin
  var anime = Anime();
  hiburan = manga;
  anime.publisher = "a";
  anime.publish();
  print("Jumlah keseluruhan: ${Karyawan.jumlahKaryawan}");

  var karyawanBaru = Karyawan("Majid", JenisKelamin.L, 24);
  // Karyawan.jumlahKaryawan = 1;
  // Karyawan.incrementKaryawan();
  // Karyawan._incrementKaryawan; // masih satu file jadi private masih kebaca
  // karyawanBaru._methodRandom;
  print("Jumlah keseluruhan: ${Karyawan.jumlahKaryawan}");
}
