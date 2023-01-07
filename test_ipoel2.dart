void main(List<String> args) {
  // var a = [1, 2, 3, 4, 5];
  // for (int i = 0; i < a.length; i++) {
  //   print("i: $i, a[$i] = ${a[i]}");
  //   for (int j = a.length - 1; j >= 0; j--) {
  //     print("j: $j, a[$j] = ${a[j]}");
  //   }
  //   print("");
  // }
  var a = [3, 27, 4, 2];
  print(functionJawaban(a));

  // print(
  //   );
  var hasilArray = productArray(a);

  print(hasilArray);
}

List<int> functionJawaban(List<int> input) {
  var arrayTampunganHasilKali2 = <int>[];

  // harus nge track index mana yang lagi dikecualikan
  for (int i = 0; i < input.length; i++) {
    var isiArayIndexSekarang = input[i];
    // selain index saat ini, kita kalikan
    var tampunganPerkalian = 1;
    for (int j = 0; j < input.length; j++) {
      if (i != j) {
        tampunganPerkalian = tampunganPerkalian * input[j];
      }
    }

    arrayTampunganHasilKali2.add(tampunganPerkalian);
    // arrayTampunganHasilKali2.add(isiArayIndexSekarang * 2);
  }

  return arrayTampunganHasilKali2;
}

List<int> productArray(List<int> input) {
  // 1. Buat array yang nampung hasilnya
  var arrayHasil = <int>[];
  // 2. Buat for terluar untuk ngetrack index mana yang lagi kita kecualikan
  for (int i = 0; i < input.length; i++) {
    // 3. buat variable untuk nampung hasil perkalian selain dari index terluar saat ini
    var hasilPerkalianArraySelainIndexSaatIni = 1;
    print("i: $i");

    // 4. kita hitung hasilPerkalianArraySelainIndexSaatIni = input[1] * input[2] * input[3] ....
    for (int j = 0; j < input.length; j++) {
      print("j: $j");

      // if (j == i) continue;
      if (i != j) {
        hasilPerkalianArraySelainIndexSaatIni =
            hasilPerkalianArraySelainIndexSaatIni * input[j];
        print(
            "hasilPerkalianArraySelainIndexSaatIni: $hasilPerkalianArraySelainIndexSaatIni");
      }
    }
    print("");
    arrayHasil.add(hasilPerkalianArraySelainIndexSaatIni);
    // arrayHasil[i] = hasilPerkalianArraySelainIndexSaatIni;
    // print("arrayHasil ${arrayHasil}");

    String abc = "abc";
    abc.toLowerCase();
  }
  return arrayHasil;
}
