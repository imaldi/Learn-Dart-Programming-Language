void main(List<String> args) {
  var a;
  print(a);

  var hexLiteral = 0xabC;

  print(hexLiteral);

  var exponents = 1.42e5;
  print(exponents);

  var singleQuoteMarkString = 'Single quotes String';
  var doubleQuoteMarkString = "Double quotes mark String";

  var integerToString = 1.toString();
  var stringToInteger = int.parse('1');
  var doubleToString = 2.5.toString();
  var stringToDouble = double.parse('1.5');

  var setExample = {1, 2, 3, 4, 4};

  print(setExample);

  var mapKontakHP = {
    "082034456755": "Budi",
    "081234456754": "Andi",
    "082134456756": "Budi",
    "082334456757": "Nisa",
  };

  print(mapKontakHP);
}
