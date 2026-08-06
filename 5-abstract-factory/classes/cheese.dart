abstract class Cheese {
  String get name;
}

class ReggianoCheese implements Cheese {
  @override
  String get name => "Reggiano Cheese";
}

class MozzarellaCheese implements Cheese {
  @override
  String get name => "Shredded Mozzarella";
}
