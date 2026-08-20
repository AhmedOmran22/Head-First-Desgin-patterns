// Flyweight: the shared interface every flyweight exposes to its client.
// Operations take whatever extrinsic state the client holds (here, the
// coordinates) as parameters, rather than storing it themselves.
abstract class TreeType {
  void draw(double x, double y);
}

// ConcreteFlyweight: the intrinsic (shared, immutable) state of a kind of
// tree — everything that's identical across every tree of that species,
// and therefore worth storing exactly once no matter how many trees exist.
class TreeTypeImpl implements TreeType {
  TreeTypeImpl(this.name, this.color, this.texture);

  final String name;
  final String color;
  final String texture;

  @override
  void draw(double x, double y) {
    print('Drawing a $color $name at ($x, $y) with $texture texture.');
  }
}
