import 'command.dart';
import 'stereo.dart';

// A command's execute() can bundle several receiver calls into one step —
// the invoker still only ever sees a single execute()/undo() pair.
class StereoOnWithCdCommand implements Command {
  StereoOnWithCdCommand(this._stereo);
  final Stereo _stereo;

  @override
  void execute() {
    _stereo.on();
    _stereo.setCd();
    _stereo.setVolume(11);
  }

  @override
  void undo() => _stereo.off();
}
