import 'purchase_request.dart';

// Handler: declares the operation for handling requests and holds a
// reference to the next handler in the chain. Concrete approvers only need
// to implement `approvalLimit` and `title` — the forwarding logic lives
// here, once.
abstract class Approver {
  Approver? next;

  double get approvalLimit;
  String get title;

  void approve(PurchaseRequest request) {
    if (request.amount <= approvalLimit) {
      print(
        '$title approves "${request.purpose}" '
        '(\$${request.amount.toStringAsFixed(2)}).',
      );
      return;
    }

    if (next != null) {
      print(
        '$title cannot approve "${request.purpose}" '
        '(\$${request.amount.toStringAsFixed(2)}) — escalating to ${next!.title}.',
      );
      next!.approve(request);
    } else {
      print(
        'No one in the chain can approve "${request.purpose}" '
        '(\$${request.amount.toStringAsFixed(2)}) — request rejected.',
      );
    }
  }
}
