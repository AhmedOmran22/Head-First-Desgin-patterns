import 'tree_type.dart';

// FlyweightFactory: caches ConcreteFlyweights keyed by their intrinsic
// state, and hands back the existing instance instead of building a new
// one whenever the same combination is requested again.
class TreeFactory {
  static final Map<String, TreeType> _cache = {};

  static TreeType getTreeType(String name, String color, String texture) {
    final key = '$name-$color-$texture';
    return _cache.putIfAbsent(key, () => TreeTypeImpl(name, color, texture));
  }

  static int get createdCount => _cache.length;
}
