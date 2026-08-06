import 'display_element.dart';
import 'observable.dart';
import 'observer.dart';

class StatisticsDisplay implements Observer, DisplayElement {
  final List<double> _temperatures = [];
  final Observable _weatherData;

  StatisticsDisplay(this._weatherData) {
    _weatherData.addObserver(this);
  }

  @override
  void update(String message) {
    final match = RegExp(r'Temp: (-?\d+(\.\d+)?)').firstMatch(message);
    if (match != null) {
      _temperatures.add(double.parse(match.group(1)!));
    }
    display();
  }

  @override
  void display() {
    if (_temperatures.isEmpty) return;
    final avg = _temperatures.reduce((a, b) => a + b) / _temperatures.length;
    final min = _temperatures.reduce((a, b) => a < b ? a : b);
    final max = _temperatures.reduce((a, b) => a > b ? a : b);
    print('Statistics: avg/max/min temp = ${avg.toStringAsFixed(1)}/$max/$min');
  }
}
