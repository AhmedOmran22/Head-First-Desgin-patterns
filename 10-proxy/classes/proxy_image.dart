import 'image.dart';
import 'real_image.dart';

// Virtual Proxy: implements the same interface as the RealSubject, but
// defers creating it until display() is actually called.
class ProxyImage implements Image {
  ProxyImage(this._fileName);

  final String _fileName;
  RealImage? _realImage;

  @override
  void display() {
    _realImage ??= RealImage(_fileName); // created lazily, on first use
    _realImage!.display();
  }
}
