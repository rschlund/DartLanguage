void main() {

//Variablen dynamisch
  var name = 'Voyager I';
  var year = 1977;
  var text = "Text";
  var satz1 = "Das " 'ist ein $text';
  var satz2 = "Das " + 'ist ein $text';

// Variablen typisiert
  String value = "3 + 5 = ${3+5}";
  bool isit = true;
  int count = 0;
  double precision = 0.1233;

  print(satz1);
  print(satz2);
  print(value);
}
