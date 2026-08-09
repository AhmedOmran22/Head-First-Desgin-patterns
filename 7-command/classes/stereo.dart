class Stereo {
  Stereo(this.room);
  final String room;

  void on() => print('$room stereo is ON');
  void off() => print('$room stereo is OFF');
  void setCd() => print('$room stereo set for CD input');
  void setVolume(int level) => print('$room stereo volume set to $level');
}
