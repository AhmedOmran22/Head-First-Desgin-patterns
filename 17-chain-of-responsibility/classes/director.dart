import 'approver.dart';

// ConcreteHandler: the last (and highest-limit) handler in this chain.
// Anything above its limit falls through and is rejected.
class Director extends Approver {
  @override
  String get title => 'Director';

  @override
  double get approvalLimit => 20000;
}
