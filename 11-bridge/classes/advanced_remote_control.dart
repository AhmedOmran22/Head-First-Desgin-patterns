import 'remote_control.dart';

// RefinedAbstraction: extends the abstraction with extra operations, still
// built purely on top of the Device interface it inherited — it works with
// any device, not just the one it was designed alongside.
class AdvancedRemoteControl extends RemoteControl {
  AdvancedRemoteControl(super.device);

  void mute() => device.setVolume(0);
}
