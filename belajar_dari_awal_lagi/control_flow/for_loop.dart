void main(List<String> args) {
  // 2. For
  // a. basic / normal
  // for (var i = 0; i < 10; i += 2) {
  //   print("index ke: ${i + 1}");
  // }

  // for (var i = 5; i > 0; i -= 2) {
  //   print("index ke: ${i}");
  // }

  // bikin tampilan angka2 dari 1 - 100, tapi cuma yang genap??
  // for (var i = 0; i <= 100; i += 2) {
  //   print("index ke: $i");
  // }

  // for (var i = 1; i <= 100; i += 2) {
  //   print("index ke: $i");
  // }

  // // b. for in
  // /// bisa untuk list, set,
  // var listSiswa = ["Majid", "Ipul"];

  // for (final siswa in listSiswa) {
  //   if (siswa == "Majid") {
  //     print("Hai $siswa");
  //   }
  //   print(siswa);
  // }

  // listSiswa.forEach((sue) {
  //   print("Hallo $sue");
  // });
  // // built-in function untuk collection => list, set, map
  // print(listSiswa.where((element) => element == "Majid"));

  /// while itu di pakai ketika kita banyak kondisi yang perlu d cek bersamaan
  /// while merubah state indexnya
  /// while state index nya ga internal (ketika di pakai orang lain,
  /// bakal berubah, karena d dalam while biasanya kita ngerubah state index)
  // int index = 0;
  // print("While");
  // while (index < 10) {
  //   print("index: $index");
  //   index++;
  // }

  // print("Do While");
  // do {
  //   print("do while pasti masuk minimal sekali");
  //   print("index: $index");
  //   index--;
  // } while (index > 0);

  // loop angka 1 - 100, print kelipatan 3, print kelipatan 5, tapi pas kelipatan 15, skip
  for (var i = 1; i <= 100; i++) {
    if (i % 17 == 0) break;
    if (i % 3 == 0) print("$i adalah kelipatan 3");
    if (i % 5 == 0) print("$i adalah kelipatan 5");
    print("i: $i");
  }
}
