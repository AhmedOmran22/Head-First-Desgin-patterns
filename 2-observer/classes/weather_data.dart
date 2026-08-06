import 'observable.dart';
import 'observer.dart';

class WeatherData implements Observable {
  final List<Observer> _observers = [];

  double _temperature = 0;
  double _humidity = 0;
  double _pressure = 0;

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers() {
    final message =
        'Temp: $_temperature°C, Humidity: $_humidity%, Pressure: $_pressure hPa';
    for (final observer in _observers) {
      observer.update(message);
    }
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    notifyObservers();
  }
}
