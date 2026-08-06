# Head First Design Patterns

Dart implementations of the design patterns from *Head First Design Patterns*,
each in its own folder with a runnable example and a dedicated README
(overview, class diagram, when to use it, and how the code maps to the
pattern's roles).

## Patterns

| # | Pattern | Summary |
|---|---------|---------|
| 1 | [Strategy](1-strategy/README.md) | Swap interchangeable algorithms (payment methods) behind a common interface at runtime. |
| 2 | [Observer](2-observer/README.md) | Notify a set of dependents automatically when a subject's state changes (weather station/displays). |
| 3 | [Decorator](3-decorator/README.md) | Attach behavior to an object dynamically by wrapping it, instead of subclassing every combination (coffee add-ons). |
| 4 | [Factory Method](4-factory-method/README.md) | Let subclasses decide which concrete product class to instantiate (NY/Chicago pizzas). |
| 5 | [Abstract Factory](5-abstract-factory/README.md) | Create families of related objects without specifying their concrete classes (regional pizza ingredients). |

## Structure

Each pattern folder follows the same layout:
- `classes/` (and sometimes `services/`) — the interfaces and concrete
  implementations involved in the pattern.
- `main.dart` — a small runnable example exercising the pattern.
- `README.md` — what the pattern is, a Mermaid class diagram, when to use
  it, and how the files here map to its roles.

## Running an example

Each folder is a standalone Dart entry point:

```bash
dart run 1-strategy/main.dart
```

Swap `1-strategy` for any other pattern folder to run its example.
