# Head First Design Patterns

Dart implementations of the design patterns from *Head First Design Patterns*,
each in its own folder with a runnable example and a dedicated README:
problem/analogy, step-by-step mechanics, an annotated Mermaid class diagram,
two runnable Dart examples, when (not) to use it, related patterns, and a
key takeaway.

## Patterns

| # | Pattern | Category | Summary |
|---|---------|----------|---------|
| 1 | [Strategy](1-strategy/README.md) | Behavioral | Swap interchangeable algorithms (payment methods) behind a common interface at runtime. |
| 2 | [Observer](2-observer/README.md) | Behavioral | Notify a set of dependents automatically when a subject's state changes (weather station/displays). |
| 3 | [Decorator](3-decorator/README.md) | Structural | Attach behavior to an object dynamically by wrapping it, instead of subclassing every combination (coffee add-ons). |
| 4 | [Factory Method](4-factory-method/README.md) | Creational | Let subclasses decide which concrete product class to instantiate (NY/Chicago pizzas). |
| 5 | [Abstract Factory](5-abstract-factory/README.md) | Creational | Create families of related objects without specifying their concrete classes (regional pizza ingredients). |

## Structure

Each pattern folder follows the same layout:
- `classes/` (and sometimes `services/`) — the interfaces and concrete
  implementations involved in the pattern.
- `main.dart` — a small runnable example exercising the pattern.
- `README.md` — the pattern's category, the problem it solves with a
  real-world analogy, how it works, an annotated class diagram, two
  runnable Dart examples (simple + production-like), when (not) to use it,
  related patterns, and a key takeaway tied to the underlying OO principle.

## Running an example

Each folder is a standalone Dart entry point:

```bash
dart run 1-strategy/main.dart
```

Swap `1-strategy` for any other pattern folder to run its example.
