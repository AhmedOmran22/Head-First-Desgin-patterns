import 'tree_type.dart';

// Client-facing object: holds only the extrinsic (context-dependent) state
// — where this particular tree stands — plus a reference to the shared
// TreeType flyweight that carries everything else.
class Tree {
  Tree(this.x, this.y, this.type);

  final double x;
  final double y;
  final TreeType type;

  void draw() => type.draw(x, y);
}
