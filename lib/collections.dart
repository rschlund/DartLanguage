void main() {

  //Listen
  var liste1 = [3, "mal", 'H', 'a', 'l', 'l', 'o'];
  List<dynamic> liste2 = [3, "mal", 'H', 'a', 'l', 'l', 'o'];
  List liste3 = [3, "mal", 'H', 'a', 'l', 'l', 'o'];
  var liste4 = new List(5);

  print(liste1);
  print(liste2);
  print(liste1 + liste2);
  liste1.addAll(liste2);
  print(liste1);
  print(liste3);
  print(liste4);

  //Map
  Map myMap = new Map();
  myMap['key1'] = "test";
  myMap['key2'] = 5;
  myMap[5] = 10;
  print(myMap);

  //Set
  Set mySet = new Set.from(['a',3,'c']);
  print (mySet);
  var wrongSet = new Set.from(['a',3,'c',3]);
  print(wrongSet);

}

