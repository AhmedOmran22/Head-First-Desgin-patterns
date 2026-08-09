import 'classes/image.dart';
import 'classes/proxy_image.dart';

void main() {
  final Image image = ProxyImage('vacation-photo.jpg');

  print('Image object created — nothing loaded from disk yet.');
  print('');

  print('Calling display() for the first time:');
  image.display(); // loads from disk, then displays

  print('');
  print('Calling display() again:');
  image.display(); // already loaded — no disk access this time
}
