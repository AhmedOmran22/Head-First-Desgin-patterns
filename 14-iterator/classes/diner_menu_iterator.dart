import 'menu_item.dart';

// ConcreteIterator: knows how to walk DinerMenu's storage specifically — a
// fixed-size array where unused slots are `null` — without exposing that
// detail to whoever is iterating. Realizes dart:core's Iterator<MenuItem>.
class DinerMenuIterator implements Iterator<MenuItem> {
  DinerMenuIterator(this._items) : _position = -1;

  final List<MenuItem?> _items;
  int _position;

  @override
  MenuItem get current => _items[_position]!;

  @override
  bool moveNext() {
    do {
      _position++;
    } while (_position < _items.length && _items[_position] == null);
    return _position < _items.length;
  }
}
