import 'classes/forest.dart';
import 'classes/tree_factory.dart';

void main() {
  final forest = Forest();

  print('-- Planting a forest --');
  forest.plantTree(1, 1, 'Oak', 'Green', 'Rough Bark');
  forest.plantTree(2, 4, 'Oak', 'Green', 'Rough Bark');
  forest.plantTree(5, 2, 'Pine', 'Dark Green', 'Needled');
  forest.plantTree(7, 8, 'Oak', 'Green', 'Rough Bark');
  forest.plantTree(3, 9, 'Pine', 'Dark Green', 'Needled');
  forest.plantTree(6, 1, 'Birch', 'White', 'Smooth Bark');

  print('');
  print('-- Rendering the forest --');
  forest.draw();

  print('');
  print('Trees planted: ${forest.treeCount}');
  print('TreeType flyweights actually created: ${TreeFactory.createdCount}');
}
