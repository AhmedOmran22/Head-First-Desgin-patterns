import 'classes/chocolate_boiler.dart';

void main() {
  final boiler1 = ChocolateBoiler.instance;
  final boiler2 = ChocolateBoiler.instance;

  print('boiler1 and boiler2 are the same instance: ${identical(boiler1, boiler2)}');

  boiler1.fill();
  boiler1.boil();
  boiler1.drain();

  // Accessed through a different reference, but it's the exact same boiler,
  // so it correctly reports empty instead of allowing a second fill.
  print('boiler2 reports empty: ${boiler2.isEmpty}');
}
