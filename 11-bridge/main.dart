import 'classes/advanced_remote_control.dart';
import 'classes/radio.dart';
import 'classes/remote_control.dart';
import 'classes/tv.dart';

void main() {
  print('-- Basic remote driving a TV --');
  final tv = Tv();
  final tvRemote = RemoteControl(tv);
  tvRemote.togglePower();
  tvRemote.volumeUp();
  tvRemote.channelUp();
  tvRemote.togglePower();

  print('');
  print('-- Basic remote driving a Radio (same remote code, new device) --');
  final radio = Radio();
  final radioRemote = RemoteControl(radio);
  radioRemote.togglePower();
  radioRemote.channelUp();
  radioRemote.togglePower();

  print('');
  print('-- Advanced remote (new abstraction) still works with either device --');
  final advancedTvRemote = AdvancedRemoteControl(tv);
  advancedTvRemote.togglePower();
  advancedTvRemote.volumeUp();
  advancedTvRemote.mute();
  advancedTvRemote.togglePower();
}
