import 'dart:collection';

import 'menu_item.dart';

// ConcreteAggregate: the pancake house's menu, backed by a growable List —
// a completely different storage strategy from DinerMenu's fixed array, and
// one that already comes with its own Iterator. Wrapping it in IterableMixin
// still gives it its own `iterator` (delegating to the List's), so the
// client never has to know the underlying collection is a List at all.
class PancakeHouseMenu with IterableMixin<MenuItem> {
  final List<MenuItem> _items = [];

  void addItem(String name, String description, bool vegetarian, double price) {
    _items.add(MenuItem(name, description, vegetarian, price));
  }

  @override
  Iterator<MenuItem> get iterator => _items.iterator;
}
