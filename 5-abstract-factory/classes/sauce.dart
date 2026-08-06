abstract class Sauce {
  String get name;
}

class MarinaraSauce implements Sauce {
  @override
  String get name => "Marinara Sauce";
}

class PlumTomatoSauce implements Sauce {
  @override
  String get name => "Plum Tomato Sauce";
}
