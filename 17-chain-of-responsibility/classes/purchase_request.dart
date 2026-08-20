// The request that travels along the chain: just data, no behavior.
class PurchaseRequest {
  PurchaseRequest(this.purpose, this.amount);

  final String purpose;
  final double amount;
}
