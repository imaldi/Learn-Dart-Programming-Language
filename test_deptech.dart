void main(List<String> args) {
  var a = List.generate(100, (index) => (index + 1).toString());

  for (var i = 0; i < a.length; i++) {
    var c = i + 1;
    if (c % 15 == 0) {
      a[i] = "Mampu";
    } else if (c % 3 == 0) {
      a[i] = "Mam";
    } else if (c % 5 == 0) {
      a[i] = "Pu";
    }
  }

  print(a);
}
