import 'classes/weather_data.dart';
import 'classes/current_conditions_display.dart';
import 'classes/statistics_display.dart';

void main() {
  final weatherData = WeatherData();

  final currentDisplay = CurrentConditionsDisplay(weatherData);
  final statisticsDisplay = StatisticsDisplay(weatherData);

  weatherData.setMeasurements(25, 65, 1013);
  weatherData.setMeasurements(27, 70, 1009);

  weatherData.removeObserver(currentDisplay);
  weatherData.setMeasurements(20, 90, 1005);

  statisticsDisplay.display();
}
