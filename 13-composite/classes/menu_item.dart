import 'menu_component.dart';

// Leaf: a single dish. Has no children, so it only needs to implement the
// operations that apply to an individual item.
class MenuItem extends MenuComponent {
  MenuItem(this.name, this.price);

  @override
  final String name;

  @override
  final double price;

  @override
  void display(String indent) {
    print('$indent- $name (\$${price.toStringAsFixed(2)})');
  }
}
