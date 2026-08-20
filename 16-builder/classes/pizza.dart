// Product: the complex object being assembled. It has no idea how it was
// built — a builder or a client could have put it together, piece by piece.
class Pizza {
  Pizza({
    required this.size,
    required this.crust,
    required this.sauce,
    required this.toppings,
  });

  final String size;
  final String crust;
  final String sauce;
  final List<String> toppings;

  @override
  String toString() {
    final toppingList =
        toppings.isEmpty ? 'no extra toppings' : toppings.join(', ');
    return '$size $crust-crust pizza with $sauce sauce and $toppingList';
  }
}
