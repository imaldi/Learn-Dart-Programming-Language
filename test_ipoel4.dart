void main(List<String> args) {
  print(solution(10));

  var a = "Aldi Majide";
  var b = a.split(" ");
  var c = b[0].split("");
  // var d = [c[3], c[2], c[1], c[0]];
  var d = [];

  for (int index = c.length - 1; index >= 0; index--) {
    d.add(c[index]);
  }

  print(b);
  print(c);
  print(d);

  // var a = 1;
  // print(a++);
  // print(a);
  // var b = 1;
  // print(++b);
  // print(b);
}

int solution(int angka) {
  List<int> arrayDeret = [];
  int index = 1;
  // int penampung = 0;
  while (index < angka) {
    if (index % 3 == 0 || index % 5 == 0) {
      arrayDeret.add(index);
    }
    index++;
    // penampung * index;
  }

  var hasilJumlahinArrayDeret = 0;
  for (int i = 0; i < arrayDeret.length; i++) {
    hasilJumlahinArrayDeret = hasilJumlahinArrayDeret + arrayDeret[i];
    print("hasilJumlahinArrayDeret : $hasilJumlahinArrayDeret");
  }
  return hasilJumlahinArrayDeret;
}

// 1. siapin array untuk nampung deret
// 2, siapin variable untuk jumlahin seluruh elemen array
// 3. perulangan pakai while sampai maksimal lebih kecil dari input/parameter
// kalau bisa dibagi 3 atau bisa di bagi 5, kita tambahin ke array tadi
// kita tambahin index 1 disetiap perulangan while supaya perulangannya jalan
// siapin variable utk nampung penjumlahan elemem array di dalam for nya nanti
// kita jumlahin hasil array satu persatu dengan for
