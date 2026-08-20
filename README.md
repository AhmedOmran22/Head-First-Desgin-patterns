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
| 6 | [Singleton](6-singleton/README.md) | Creational | Guarantee a class has exactly one instance and provide a global access point to it (chocolate boiler). |
| 7 | [Command](7-command/README.md) | Behavioral | Encapsulate a request as an object so it can be queued, logged, and undone (remote control). |
| 8 | [Adapter](8-adapter/README.md) | Structural | Convert one class's interface into another interface clients expect (duck/turkey adapter). |
| 9 | [Facade](9-facade/README.md) | Structural | Provide one simplified entry point over a complex subsystem (home theater). |
| 10 | [Proxy](10-proxy/README.md) | Structural | Provide a stand-in for another object to control access to it (lazily-loaded image). |
| 11 | [Bridge](11-bridge/README.md) | Structural | Decouple an abstraction from its implementation so both can vary independently (remotes and devices). |
| 12 | [Template Method](12-template-method/README.md) | Behavioral | Define an algorithm's skeleton in a base class, letting subclasses fill in individual steps (caffeine beverages). |
| 13 | [Composite](13-composite/README.md) | Structural | Compose objects into tree structures and treat individual objects and compositions uniformly (restaurant menus). |
| 14 | [Iterator](14-iterator/README.md) | Behavioral | Traverse the elements of a collection without exposing its underlying representation (diner/pancake-house menus). |
| 15 | [State](15-state/README.md) | Behavioral | Let an object alter its behavior when its internal state changes, appearing to change class (gumball machine). |

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
