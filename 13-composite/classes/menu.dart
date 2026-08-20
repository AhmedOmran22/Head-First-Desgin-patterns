import 'menu_component.dart';

// Composite: a group of MenuComponents — MenuItems, or other Menus nested
// arbitrarily deep. Implements add/remove/display by delegating to whatever
// children it holds, without caring whether each child is a leaf or another
// composite.
class Menu extends MenuComponent {
  Menu(this.name);

  @override
  final String name;

  final List<MenuComponent> _children = [];

  @override
  void add(MenuComponent component) => _children.add(component);

  @override
  void remove(MenuComponent component) => _children.remove(component);

  @override
  void display(String indent) {
    print('$indent$name');
    for (final child in _children) {
      child.display('$indent  ');
    }
  }
}
