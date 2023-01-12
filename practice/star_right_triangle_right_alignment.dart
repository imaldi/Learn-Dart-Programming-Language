var batasAkhir = 8;
void main(List<String> args) {
  for (var i = 1; i <= batasAkhir; i++) {
    var k = '';
    for (var j = 1; j <= batasAkhir; j++) {
      if (j == i) {
        k += "1".toString();
      } else {
        k += "0".toString();
      }
    }
    print(k);
  }
}
