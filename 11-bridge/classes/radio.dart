import 'device.dart';

// ConcreteImplementor: a Radio's own idea of enable/volume/channel — the
// same interface as Tv, but a completely unrelated implementation.
class Radio implements Device {
  bool _enabled = false;
  int _volume = 50;
  int _channel = 88;

  @override
  bool get isEnabled => _enabled;

  @override
  void enable() {
    _enabled = true;
    print('Radio: powering on.');
  }

  @override
  void disable() {
    _enabled = false;
    print('Radio: powering off.');
  }

  @override
  int get volume => _volume;

  @override
  void setVolume(int percent) {
    _volume = percent.clamp(0, 100);
    print('Radio: volume set to $_volume.');
  }

  @override
  int get channel => _channel;

  @override
  void setChannel(int channel) {
    _channel = channel;
    print('Radio: tuned to $_channel FM.');
  }
}
