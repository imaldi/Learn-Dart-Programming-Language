var sudahMakan = false;
var sudahMandi = false;

void main(List<String> args) {
  /// apa sih control flow?
  /// control flow itu, adalah cara kita mengatur alur jalannya program kita
  /// biasanya, program di baca dari baris atas ke bawah,
  /// tapi dengan control flow, kita bisa mengatur alur jalannya program kita

  // 1. If dan else
  // a. if paling simple
  print("a. if paling simple");
  if (sudahMakan) {
    print("gosok gigi");
  }
  print("");

  // b. if dan else
  print("b. if dan else");
  if (sudahMakan) {
    print("kenyang");
  } else {
    print("masih lapar");
  }
  print("");

  // c. nested if
  print("c. nested if");
  if (sudahMakan) {
    if (sudahMandi) {
      print("berangkat kerja");
    } else {
      print("Sudah makan ? $sudahMakan");
      print("Sudah mandi ? $sudahMandi");
    }
    print(
        "Ini selalu ke print karena di luar kondisi sudah mandi, tapi di dalam kondisi udah makan");
  } else {
    print("Mandi dulu bujang");
  }
  print("");

  // d. nested if di dalam else
  print("d. nested if di dalam else");
  if (sudahMakan) {
    if (sudahMandi) {
      print("berangkat kerja");
    }
  } else {
    if (sudahMandi) {
      print("Makan dulu dong");
    } else {
      print("Mandi dulu bujang");
    }
  }

  // e. else if
  if (sudahMakan && sudahMandi) {
    print("Masuk Flow 1");
  } else if (sudahMakan && !sudahMandi) {
    print("Masuk Flow 2");
  } else if (!sudahMakan && sudahMandi) {
    print("Masuk Flow 3");
  } else {
    print("Masuk ke flow 4");
  }

  // 6. Guard Clause // nanti pas kita mulai buat function aja lah
  // if (sudahMakan) {}
}
