import 'image.dart';

// RealSubject: expensive to create (simulated "loading from disk" here),
// so we don't want to pay that cost until the image is actually needed.
class RealImage implements Image {
  RealImage(this._fileName) {
    _loadFromDisk();
  }

  final String _fileName;

  void _loadFromDisk() => print('Loading $_fileName from disk...');

  @override
  void display() => print('Displaying $_fileName');
}
