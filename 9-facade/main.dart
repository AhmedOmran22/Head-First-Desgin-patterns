import 'classes/amplifier.dart';
import 'classes/dvd_player.dart';
import 'classes/home_theater_facade.dart';
import 'classes/popcorn_popper.dart';
import 'classes/projector.dart';
import 'classes/screen.dart';
import 'classes/theater_lights.dart';

void main() {
  final homeTheater = HomeTheaterFacade(
    amplifier: Amplifier(),
    dvdPlayer: DvdPlayer(),
    projector: Projector(),
    screen: Screen(),
    lights: TheaterLights(),
    popper: PopcornPopper(),
  );

  homeTheater.watchMovie('The Matrix');
  print('');
  homeTheater.endMovie();
}
