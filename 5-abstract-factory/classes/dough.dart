abstract class Dough {
  String get name;
}

class ThinCrustDough implements Dough {
  @override
  String get name => "Thin Crust Dough";
}

class ThickCrustDough implements Dough {
  @override
  String get name => "Extra Thick Crust Dough";
}
