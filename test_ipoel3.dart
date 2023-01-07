void main(List<String> args) {
// return type tu apa sihhhh
  var a = 1;
  var b = 2;
  int c = 0;

  // c = penjumlahan(a, b);
  // c = tampilkanAngka(0);
  var stringInput = "Aldi Majide";
  var stringOutput = alternateCase(stringInput);

  print(stringOutput);
}

// void tampilkanAngka(int angkaYangMauDitampilkan) {
//   print(angkaYangMauDitampilkan);
// }

// // return type
// int penjumlahan(int a, int b) {
//   return a + b;
// }

String alternateCase(String input) {
  var arraySplit = input.split("");
  var stringHasil = "";
  for (int i = 0; i < arraySplit.length; i++) {
    if (arraySplit[i].toUpperCase() == arraySplit[i]) {
      stringHasil = stringHasil + arraySplit[i].toLowerCase();
      print(arraySplit[i].toLowerCase());
    } else {
      stringHasil = stringHasil + arraySplit[i].toUpperCase();
      print(arraySplit[i].toUpperCase());
    }
  }

  return stringHasil;
}

/// return type | nama function | nerima masukan/input apa aja | body
