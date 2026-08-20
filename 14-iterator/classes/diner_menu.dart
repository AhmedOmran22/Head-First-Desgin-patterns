import 'dart:collection';

import 'diner_menu_iterator.dart';
import 'menu_item.dart';

// ConcreteAggregate: the diner's menu, backed by a fixed-size array with a
// hard cap and possible gaps. Mixing in dart:core's IterableMixin realizes
// this pattern's Aggregate role — the `iterator` getter it requires *is*
// the `createIterator()` factory method, and the mixin supplies every other
// Iterable method (map, where, toList, ...) for free on top of it.
class DinerMenu with IterableMixin<MenuItem> {
  static const _maxItems = 6;
  final List<MenuItem?> _items = List<MenuItem?>.filled(_maxItems, null);
  int _numberOfItems = 0;

  void addItem(String name, String description, bool vegetarian, double price) {
    if (_numberOfItems >= _maxItems) {
      print('Sorry, diner menu is full! Cannot add $name');
      return;
    }
    _items[_numberOfItems] = MenuItem(name, description, vegetarian, price);
    _numberOfItems++;
  }

  @override
  Iterator<MenuItem> get iterator => DinerMenuIterator(_items);
}
