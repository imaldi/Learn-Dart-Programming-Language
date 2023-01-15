void main(List<String> args) async {
  var somethingInTheFuture = getTheFuture();
  print(somethingInTheFuture);
  // kalau nanti udah selesai (setelah 3 detik), print ini
  somethingInTheFuture.then((val) => print(val));
  print("Ini ending aja");
}

Future<String> getTheFuture() async {
  return await Future.delayed(Duration(seconds: 3), () => "Ara ara");
}
