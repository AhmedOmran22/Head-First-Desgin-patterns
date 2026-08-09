import 'duck.dart';
import 'turkey.dart';

// Adapter: implements the Target interface (Duck) by translating each call
// into the Adaptee's (Turkey) API. Turkeys fly in short bursts, so quack()
// calls gobble(), and fly() compensates by calling the turkey's fly() 5
// times to roughly match how far a duck flies in one call.
class TurkeyAdapter implements Duck {
  TurkeyAdapter(this._turkey);
  final Turkey _turkey;

  @override
  void quack() => _turkey.gobble();

  @override
  void fly() {
    for (var i = 0; i < 5; i++) {
      _turkey.fly();
    }
  }
}
