import 'menu_item.dart';

// Client: prints any menu it's handed. It only ever talks to Iterable<MenuItem>
// — it has no idea one menu is a fixed-size array and the other a growable
// List, and it doesn't need to know, which is the whole point of the pattern.
class Waitress {
  void printMenu(Iterable<MenuItem> menu) {
    for (final item in menu) {
      print(item);
    }
  }

  void printVegetarianMenu(Iterable<MenuItem> menu) {
    for (final item in menu.where((item) => item.vegetarian)) {
      print(item);
    }
  }
}
