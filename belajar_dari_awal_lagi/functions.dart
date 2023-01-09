void main(List<String> args) {
  var a = 3;
  var b = 5;

  var c = a + b;

  print("hasil penjumlahan adalah: $c");

  var d = 6;
  var e = 7;

  var f = a + b;

  // statement
  print("hasil penjumlahan adalah: $f");

  penjumlahanDanPrint(5, 8);
  penjumlahanDanPrint(5, 5);
  penjumlahanDanPrint(4, 8);
  penjumlahanDanPrint(5, 7);
  penjumlahanDanPrint(5, 6);
  String kata2salam = salam("Majid");

  penjumlahanDanPrint(sum(1, 1), sum(2, 3));

  print(kata2salam);
  salamLagi("Aldi");

  // var a =   penjumlahanDanPrint(5, 6); // statement ga bisa di masukin ke variable

  // pakai anonymous function
  hitungAngka(3, 5, (int a, int b) {
    var hasil = a + b * 5;
    return hasil;
  });

  hitungAngka(3, 5, (int a, int b) {
    var hasil = a + b * 7;
    return hasil;
  });
  // pakai konsep "function as first class object"
  hitungAngka(a, b, luasSegitiga);
  // hitungAngka(a, b, contohSignatureBeda);

  // coba throw error
  division(5, 0);
}

// deklarasi => ngebuat
// eksekusi => memakai

// statement dan expresion itu, itu jenis function, supaya kau bisa konsepnya

// statement
void penjumlahanDanPrint(int a, int b) {
  var hasil = sum(a, b);
  print("hasil penjumlahan : $hasil");
}

// expression
//Struktur sebuah function
// return_type identifier(parameters){body} => signature
int sum(int a, int b) {
  return a + b;
} // signature nya itu int Function(int, int)

int times(int a, int b) {
  return a * b;
} // signature nya itu int Function(int, int)

int division(int a, int b) {
  // Error harusnya ga di taro di dalam try, supaya programmer tau, salah pakai kodingannya di mana
  if (b == 0) throw UnsupportedError("Pembagian Dengan 0");

  // Exception (Bisa juga sih error. tapi kan tadi error ga d sarankan utk d tangkap, biar lepas aja)
  try {
    print("");
  } on UnsupportedError {
    // handle kalau pembagian 0
  }
  // on HttpException {
  //   // handle lain lagi caranya
  //   print("Koneksi ke server gagal");
  // }
  catch (e) {
    print("Errornya adalah: $e");
    //
    // jlaksjld
  } finally {
    // finally selalu jalan mau program throw error atau catch exception, atau ga ada error/exception sama sekali
    print("Mau error ataupun ga error tetep jalan gaskan");
  }
  return a ~/ b;
}

@deprecated
int luasSegitiga(int alas, int tinggi) {
  ///
  /// skndlka
  /// msdma
  return 0;
}

int luasSegitigaRumusModer(int alas, int tinggi) {
  return 0;
}

int contohSignatureBeda(int a, int b, String c) {
  return 0;
} // signature nya itu int Function(int, int, String)

//deklarasi
void hitungAngka(int a, int b, int Function(int, int) operation) {
  // parameter function yang bertipe function, harus di panggil sebelum dipakai
  // kalau nggak, yang direturn cuma type/signature nya aja
  var hasil = operation(a, b);
  print("Hasil Operation: $hasil");
}

String salam(String nama) {
  return "Hallo $nama";
}

// contoh function yang punya parameter optional
void salamLagi(String Nama, {String? honorific}) {
  print("Selamat Pagi${honorific ?? " "}$Nama");
}
