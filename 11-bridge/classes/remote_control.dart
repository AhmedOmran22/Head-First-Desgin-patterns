import 'device.dart';

// Abstraction: defines the remote's high-level operations in terms of the
// Device interface, without caring which concrete device it's driving.
class RemoteControl {
  RemoteControl(this.device);

  final Device device;

  void togglePower() {
    if (device.isEnabled) {
      device.disable();
    } else {
      device.enable();
    }
  }

  void volumeUp() => device.setVolume(device.volume + 10);

  void volumeDown() => device.setVolume(device.volume - 10);

  void channelUp() => device.setChannel(device.channel + 1);
}
