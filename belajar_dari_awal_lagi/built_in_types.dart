void main(List<String> args) {
  // identifiers, dan literal
  // identifiers => apapun nama yang kita kasih (atau orang lain) ke program utk penamaan
  var a;
  // cuma bisa huruf + angka + beberapa simbol
  // cuma bisa dimulai dengan huruf, dengan underscore, dengan tanda $
  // var 12njfjald; // invalid identifiers
  var _namaGuru;
  var $namaguruLain127372;
  void penjumlahan() {}
  // literal
  // literal ini berhubungan dengan tipe data nya masing2
  int jumlahAnakAyam = 5; //contoh yang sukses
  // int jumlahPekerja = 1.5; //contoh yang compiler error
  double pi = 3.14;
  double contohDoubleYangDiisiDenganIntegerLiteral = 3;
  String singleQuote = 'Aldi';
  String doubleQuote = "Majid";

  /// escape character => \ (backslash)
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  // print();

  bool isSudahMandi = true;

  // literal untuk list => []
  List daftarSiswa = [];
  daftarSiswa.add("Majide");
  daftarSiswa.add("Ipul");
  print(daftarSiswa);

  // literal untuk map => {}
  // Map ini adalah struktur data key-value
  // key nya harus unique
  // value nya boleh ga unique
  /// type parameter itu untuk ngejelasin tipe key dan value map
  // ini lebih aman, karna pasti sejak awal
  Map<String, String> unsurKimia = {
    // key : value
    "H": "Hidrogen",
    "He": "Helium",
    // "He": "Hehenium", // compiler bakal complaint karena key nya double
    "Ab": "Helium",
  };

  Map nomorKTP = {
    "1502130": "ALDI",
    2: "IPUL"
  }; // rawan error karna ga specify type parameternya

  // numbers(int, double), String, List, Map

  // bonus Set => seperti list, tapi harus unik
  // Set adalah list yang Unique => setiap elemen harus berbeda
  // literal set mirip dengan Map tapi ga pakai ":"
  Set daftarMacamPekerjaan = {
    "Koki",
    "Koki",
    "Insinyur",
  };
  print("daftarMacamPekerjaan");

  // just ingfo Runes dan Symbols
  // A = 01010101
  // B = 01010110
}

class Ayam {}
