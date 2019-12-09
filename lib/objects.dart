import 'points.dart';

main(){
  Line line = new Line(2, 10);
  //implizite setter
  line.start = 1;
  line.end = 11;
  //implizite getter
  print("Startpunkt: ${line.start}");
  print("Line_X: ${line._x}");
  line.drawLine();
  line.showPoint();
  Pointext p_ext = new Pointext(3, 7);
  //int x = p_ext._x; Der implizite Getter funktioniert nicht mehr
  int x = p_ext.x;
  print("Expliziter Getter: $x");
  //Nicht private variablen können ausgegeben werden
  print("Nicht privat: ${p_ext.test}");
  //Gilt auch für private Methoden
  //print(p_ext._calcDist()); geht nicht
  print("Private Methode: ${p_ext.dist}");
}

class Point {
  int _x, _y;

  //Konstruktor
  Point(int x, int y){
    this._x = x;
    this._y = y;
  }
  //Kurzform
  //Point(this.x, this.y);

  void showPoint(){
    print ('Point: ($_x, $_y)');
  }

}

class Line extends Point{
  int start, end;
  Line(this.start, this.end) : super(start, end);

  void drawLine(){
    String line = "";
    for (int i = 1; i <= (end-start).abs(); i++){
      line = line + ".";
    }
    print(line);
  }
}