# Strategy Pattern

## What it is
Defines a family of interchangeable algorithms, puts each one behind a common
interface, and lets the object that uses them (the "context") swap which one
it's using at runtime — without changing its own code.

## Class Diagram
```mermaid
classDiagram
    class PaymentStrategy {
        <<abstract>>
        +pay(amount) void
    }
    class VisaPayment {
        +pay(amount) void
    }
    class CashPayment {
        +pay(amount) void
    }
    class WalletPayment {
        +pay(amount) void
    }
    class VodafoneCashPayment {
        +pay(amount) void
    }
    class PaymentService {
        -paymentStrategy PaymentStrategy
        +pay(amount) void
    }

    PaymentStrategy <|.. VisaPayment
    PaymentStrategy <|.. CashPayment
    PaymentStrategy <|.. WalletPayment
    PaymentStrategy <|.. VodafoneCashPayment
    PaymentService o--> PaymentStrategy : delegates to
```

## When to use it
- You have several ways to do the same job (e.g. pay, sort, compress, validate)
  and pick between them based on runtime conditions (user choice, config, type).
- You're tempted to write a big `if/else` or `switch` that branches on a "kind"
  and duplicates that branch in multiple places. Strategy collapses that into
  one branch, at the one place the strategy is chosen.
- You want to add a new variant later without touching existing, tested code
  (Open/Closed Principle).

## How it's structured here
- [classes/payment_strategy.dart](classes/payment_strategy.dart) — the
  `PaymentStrategy` interface: the one method (`pay`) every strategy must implement.
- [classes/visa_payment.dart](classes/visa_payment.dart),
  [cash_payment.dart](classes/cash_payment.dart),
  [wallet_payment.dart](classes/wallet_payment.dart),
  [vodafone_cash_payment.dart](classes/vodafone_cash_payment.dart) — concrete
  strategies, each implementing `pay` differently.
- [services/payment_service.dart](services/payment_service.dart) — the
  context. It holds a `PaymentStrategy` and delegates `pay()` to it; it has no
  idea which concrete strategy it's holding.
- [main.dart](main.dart) — swaps the strategy passed into `PaymentService` at
  runtime (Visa, then Cash, then Wallet, then Vodafone Cash) without changing
  `PaymentService` itself.

## Key idea to remember
The context (`PaymentService`) is programmed against the interface
(`PaymentStrategy`), never against a concrete class. Adding a new payment
method means adding one new file — `PaymentService` doesn't change at all.
