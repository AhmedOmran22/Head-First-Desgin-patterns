class ChocolateBoiler {
  ChocolateBoiler._internal();

  static final ChocolateBoiler _instance = ChocolateBoiler._internal();

  static ChocolateBoiler get instance => _instance;

  bool _empty = true;
  bool _boiled = false;

  void fill() {
    if (!_empty) return;
    _empty = false;
    _boiled = false;
    print('Filling the boiler with milk and chocolate.');
  }

  void boil() {
    if (_empty || _boiled) return;
    _boiled = true;
    print('Boiling the chocolate and milk mixture.');
  }

  void drain() {
    if (_empty || !_boiled) return;
    _empty = true;
    print('Draining the boiled milk and chocolate.');
  }

  bool get isEmpty => _empty;
  bool get isBoiled => _boiled;
}
