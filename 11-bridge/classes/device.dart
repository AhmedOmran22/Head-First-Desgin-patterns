// Implementor: the interface every concrete device provides, independent
// of whatever remote controls end up driving it.
abstract class Device {
  bool get isEnabled;
  void enable();
  void disable();
  int get volume;
  void setVolume(int percent);
  int get channel;
  void setChannel(int channel);
}
