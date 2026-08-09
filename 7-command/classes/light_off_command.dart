import 'command.dart';
import 'light.dart';

class LightOffCommand implements Command {
  LightOffCommand(this._light);
  final Light _light;

  @override
  void execute() => _light.off();

  @override
  void undo() => _light.on();
}
