import 'tree.dart';
import 'tree_factory.dart';

// Client: plants huge numbers of trees while only ever touching the
// factory, never constructing a TreeType directly.
class Forest {
  final List<Tree> _trees = [];

  void plantTree(
    double x,
    double y,
    String name,
    String color,
    String texture,
  ) {
    final type = TreeFactory.getTreeType(name, color, texture);
    _trees.add(Tree(x, y, type));
  }

  void draw() {
    for (final tree in _trees) {
      tree.draw();
    }
  }

  int get treeCount => _trees.length;
}
