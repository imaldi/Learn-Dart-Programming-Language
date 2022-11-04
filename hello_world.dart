void main(List<String> args) {
  print("Hello World");
  /* Ini
  adalah
  contoh
  multi-line
  comments
  pada
  Dart
  */
  // this is single line comment in dart
  /**
   * This is multi line comment in dart
   */
  /// this is documentation comment
  /// you can use this to refer to any identifier in your code [exampleFunction]
  ///
  exampleFunction();
  var a = 3;
  var A = 3;
  print(addNumber(a, A));
}

/** this function is just example*/
exampleFunction() {}

// Ini tidak termasuk documentation comment dan tidak ditampilkan oleh compiler
// Di bawah ini hanyalah contoh penggunaan C# style documentation comments
/// Function untuk menjumlahkan 2 angka
/// Function ini mengambil 2 angka dan mengembalikan jumlah dari 2 angka tersebut
int addNumber(int a, int b) {
  return a + b;
}
