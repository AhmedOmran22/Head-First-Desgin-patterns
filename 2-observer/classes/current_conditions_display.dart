import 'display_element.dart';
import 'observable.dart';
import 'observer.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  String _lastMessage = '';
  final Observable _weatherData;

  CurrentConditionsDisplay(this._weatherData) {
    _weatherData.addObserver(this);
  }

  @override
  void update(String message) {
    _lastMessage = message;
    display();
  }

  @override
  void display() {
    print('Current conditions: $_lastMessage');
  }
}
