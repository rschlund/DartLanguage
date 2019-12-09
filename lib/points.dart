class Pointext {
  int _x, _y;
  int test = 5;

  int get x => _x;
  int get y => _x;
  int get dist => _calcDist();
  //Konstruktor
  Pointext(int x, int y) {
    this._x = x;
    this._y = y;
  }

  int _calcDist(){
    return (_x-_y).abs();
  }
}