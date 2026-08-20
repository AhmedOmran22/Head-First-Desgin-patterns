import 'device.dart';

// ConcreteImplementor: a TV's own idea of enable/volume/channel.
class Tv implements Device {
  bool _enabled = false;
  int _volume = 30;
  int _channel = 1;

  @override
  bool get isEnabled => _enabled;

  @override
  void enable() {
    _enabled = true;
    print('TV: powering on.');
  }

  @override
  void disable() {
    _enabled = false;
    print('TV: powering off.');
  }

  @override
  int get volume => _volume;

  @override
  void setVolume(int percent) {
    _volume = percent.clamp(0, 100);
    print('TV: volume set to $_volume.');
  }

  @override
  int get channel => _channel;

  @override
  void setChannel(int channel) {
    _channel = channel;
    print('TV: switched to channel $_channel.');
  }
}
