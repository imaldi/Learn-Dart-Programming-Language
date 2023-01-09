// bool topLevel = true;

void main() {
  // var insideMain = true;

  // void myFunction() {
  //   var insideFunction = true;
  //   var insideNestedFunction = false;
  //   print(insideNestedFunction);

  //   void nestedFunction() {
  //     var insideNestedFunction = true;

  //     print(topLevel);
  //     print(insideMain);
  //     print(insideFunction);
  //     print(insideNestedFunction);
  //   }
  // }

  // // Create a function that adds 2.
  // var add2 = makeAdder(2);

  // // Create a function that adds 4.
  // var add4 = makeAdder(4);

  // print(add2(3));
  // print(add4(3));
  var mauBuatKopi = siapinAirUntukKopi(berapaLiterAir: 1);
  print(mauBuatKopi(6));
}

/// Returns a function that adds [addBy] to the
/// function's argument.
// Function makeAdder(int addBy) {
//   return (int i) => addBy + i;
// }

Function siapinAirUntukKopi({required int berapaLiterAir}) {
  return (int kopiBerapaSendok) =>
      "Air $berapaLiterAir L dengan Kopi $kopiBerapaSendok sendok";
}

/// kesimpulannya adalah
/// inner function bisa manggil parameter dari outer function 
