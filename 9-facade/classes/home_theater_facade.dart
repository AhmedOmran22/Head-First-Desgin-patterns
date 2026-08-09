import 'amplifier.dart';
import 'dvd_player.dart';
import 'popcorn_popper.dart';
import 'projector.dart';
import 'screen.dart';
import 'theater_lights.dart';

// Facade: provides one simple entry point over a subsystem of many parts
// that each have their own, more detailed API.
class HomeTheaterFacade {
  HomeTheaterFacade({
    required Amplifier amplifier,
    required DvdPlayer dvdPlayer,
    required Projector projector,
    required Screen screen,
    required TheaterLights lights,
    required PopcornPopper popper,
  })  : _amplifier = amplifier,
        _dvdPlayer = dvdPlayer,
        _projector = projector,
        _screen = screen,
        _lights = lights,
        _popper = popper;

  final Amplifier _amplifier;
  final DvdPlayer _dvdPlayer;
  final Projector _projector;
  final Screen _screen;
  final TheaterLights _lights;
  final PopcornPopper _popper;

  void watchMovie(String movie) {
    print('Get ready to watch a movie...');
    _popper.on();
    _popper.pop();
    _lights.dim(10);
    _screen.down();
    _projector.on();
    _projector.wideScreenMode();
    _amplifier.on();
    _amplifier.setVolume(5);
    _dvdPlayer.on();
    _dvdPlayer.play(movie);
  }

  void endMovie() {
    print('Shutting movie theater down...');
    _popper.off();
    _lights.on();
    _screen.up();
    _projector.off();
    _amplifier.off();
    _dvdPlayer.stop();
    _dvdPlayer.off();
  }
}
