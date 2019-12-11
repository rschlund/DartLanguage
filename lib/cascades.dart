class ChainCalculator {
  double _accumulator = 0.0;

  //Konstruktor
  ChainCalculator(double initVal) {
    this._accumulator = initVal;
  }

  //Methoden
  ChainCalculator add(double val) {
    this._accumulator += val;
    return this;
  }

  ChainCalculator subtract(double val) {
    this._accumulator -= val;
    return this;
  }

  Calculator getCalculator(){
    return new Calculator(0);
  }

  ChainCalculator printResult() {
    print("Result: " + this._accumulator.toString());
    return this;
  }
}

class Calculator {
  double _accumulator = 0;

  //Konstruktor
  Calculator(double startValue) {
    this._accumulator = startValue;
  }

  //Methoden
  void add(double val) {
    this._accumulator += val;
  }

  void subtract(double val) {
    this._accumulator -= val;
  }

  void printResult() {
    print("Result: " + this._accumulator.toString());
  }
}

main() {
  ChainCalculator(0.0)
      .add(2.0)
      .subtract(1.0)
      .add(4.0)
      .printResult()
      .getCalculator()
      ..add(12.0)
      ..subtract(10.0)
      ..add(5.0)
      ..subtract(8.0)
      ..printResult();

  Calculator(0.0)
    ..add(12.0)
    ..subtract(10.0)
    ..add(5.0)
    ..subtract(8.0)
    ..printResult();
}