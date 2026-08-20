import 'classes/director.dart';
import 'classes/manager.dart';
import 'classes/purchase_request.dart';
import 'classes/team_lead.dart';

void main() {
  final teamLead = TeamLead();
  final manager = Manager();
  final director = Director();

  teamLead.next = manager;
  manager.next = director;

  print('-- Client only ever talks to the first handler --');
  teamLead.approve(PurchaseRequest('New keyboard', 80));
  print('');
  teamLead.approve(PurchaseRequest('Team offsite', 3200));
  print('');
  teamLead.approve(PurchaseRequest('New hire laptops', 18000));
  print('');
  teamLead.approve(PurchaseRequest('Office renovation', 50000));
}
