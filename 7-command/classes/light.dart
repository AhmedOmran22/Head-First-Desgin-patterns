class Light {
  Light(this.room);
  final String room;

  void on() => print('$room light is ON');
  void off() => print('$room light is OFF');
}
