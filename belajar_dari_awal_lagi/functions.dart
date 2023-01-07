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

  // var a =   penjumlahanDanPrint(5, 6); // statement ga bisa di masukin ke variable
}

// statement
void penjumlahanDanPrint(int a, int b) {
  var hasil = sum(a, b);
  print("hasil penjumlahan : $hasil");
}

// expression
//Struktur sebuah function
// return_type identifier(parameters){body}
int sum(int a, int b) {
  return a + b;
}

String salam(String nama) {
  return "Hallo $nama";
}
