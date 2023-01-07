void main() {
  // manggil call
  maxRedigit(-1);
  maxRedigit(0);
  maxRedigit(99);
  maxRedigit(1000);
}

// deklarasi
void maxRedigit(int angka) {
  // int maxRedigit = 123;
  if (angka <= 99 || angka >= 1000) {
    print(null);
  } else {
    var maxRedigitString = angka.toString();
    var maxRedigitArr = maxRedigitString.split('');
    var maxRedigitArrInt = maxRedigitArr.map((e) => int.parse(e));

    List<int> maxRedigitArrSort = maxRedigitArrInt.toList();
    var b = maxRedigitArrSort.sort((a, b) => b.compareTo(a));

    var maxRedigitSort = maxRedigitArrSort.join();
    var maxRedigitFinal = int.parse(maxRedigitSort);

    print(maxRedigitFinal);
  }
  // return 4;
}
