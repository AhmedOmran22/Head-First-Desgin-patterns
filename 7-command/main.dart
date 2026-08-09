import 'classes/light.dart';
import 'classes/light_off_command.dart';
import 'classes/light_on_command.dart';
import 'classes/remote_control.dart';
import 'classes/stereo.dart';
import 'classes/stereo_on_with_cd_command.dart';

void main() {
  final remote = RemoteControl(2);

  final livingRoomLight = Light('Living Room');
  final livingRoomStereo = Stereo('Living Room');

  remote.setCommand(0, LightOnCommand(livingRoomLight), LightOffCommand(livingRoomLight));
  remote.setCommand(1, StereoOnWithCdCommand(livingRoomStereo), LightOffCommand(livingRoomLight));

  remote.onButtonWasPushed(0);
  remote.offButtonWasPushed(0);
  remote.undoButtonWasPushed(); // undoes the light being off -> light back on

  print('');

  remote.onButtonWasPushed(1); // stereo on + CD + volume, in one command
  remote.undoButtonWasPushed(); // undoes the whole bundled command
}
