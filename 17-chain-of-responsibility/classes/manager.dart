import 'approver.dart';

// ConcreteHandler: handles mid-sized purchases, escalates the rest.
class Manager extends Approver {
  @override
  String get title => 'Manager';

  @override
  double get approvalLimit => 5000;
}
