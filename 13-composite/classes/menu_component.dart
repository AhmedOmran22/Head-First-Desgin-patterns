// Component: the shared interface for leaves and composites alike. Default
// implementations throw, so a concrete Leaf or Composite only needs to
// override the operations that actually make sense for it.
abstract class MenuComponent {
  String get name => throw UnsupportedError('Unsupported operation');

  double get price => throw UnsupportedError('Unsupported operation');

  void add(MenuComponent component) =>
      throw UnsupportedError('Unsupported operation');

  void remove(MenuComponent component) =>
      throw UnsupportedError('Unsupported operation');

  void display(String indent);
}
