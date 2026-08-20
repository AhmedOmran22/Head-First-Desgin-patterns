import 'approver.dart';

// ConcreteHandler: handles small purchases, escalates everything else.
class TeamLead extends Approver {
  @override
  String get title => 'Team Lead';

  @override
  double get approvalLimit => 500;
}
