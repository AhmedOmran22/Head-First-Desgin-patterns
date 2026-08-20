// The element type both menus hand out through their iterators, regardless
// of how each menu actually stores its items internally.
class MenuItem {
  MenuItem(this.name, this.description, this.vegetarian, this.price);

  final String name;
  final String description;
  final bool vegetarian;
  final double price;

  @override
  String toString() {
    final veg = vegetarian ? '(v) ' : '';
    return '$name, $veg\$${price.toStringAsFixed(2)} -- $description';
  }
}
