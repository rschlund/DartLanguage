main() {
  run(add, 4, 5);
  run(addopt, 3, 7);
  //Geht nicht, warum?
  //run(addopt, 3);
  print(addopt(3));
  run(addshort, 5, 10);
  print(addopt_without_default(4));

  //Funktionsaufruf mit named Parametern
  print(addnamed(5, num2: 3, num3: 4));
}

//Kurzschreibweise
int addshort(int num1, int num2) => num1 + num2;

//Anonyme Funktionen in Kurzschreibweise
var display = () => print('Hallo');

//Anonyme Funktionen ohne Kurzschreibweise
var add = (x, y) {return x + y;};

//Funktionen als Parameter
void run(Function calc, int p1, [int p2]) {
  print(calc(p1, p2));
}

//Funktionen mit optionalem Parameter

//Mit Default
int addopt(int p1, [int p2 = 4]) {
  return p1 + p2;
}

//Ohne Default
int addopt_without_default(int p1, [int p2]) {
  if (p2 != null) {
    return p1 + p2;
  }
  return 0;
}

//Funktionen mit named Parametern
int addnamed(int num1, {int num2, int num3}/*, num4 geht nicht */){
  return num1+num2;
}
