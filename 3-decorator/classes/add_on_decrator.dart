import 'beverage.dart';

abstract class AddOnDecorator extends Beverage {
  Beverage beverage;

  AddOnDecorator(this.beverage);

  @override
  String getDescription() {
    return "${beverage.getDescription()}, $description";
  }
}
