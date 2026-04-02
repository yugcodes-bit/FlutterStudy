# 🔀 Flex Widget — Complete Guide

## What is it?
`Flex` is the **parent class** of both `Row` and `Column`.
When you use `Row` or `Column`, Flutter is actually using `Flex` internally.
The only difference is the `direction` property.

## The Relationship
```
Flex(direction: Axis.horizontal) == Row
Flex(direction: Axis.vertical)   == Column
```

## When do you actually USE Flex directly?
Only when the direction needs to **change dynamically** at runtime.
For example — different layout on wide vs narrow screens.

## Key Properties

| Property | What it does |
|----------|-------------|
| `direction` | `Axis.horizontal` or `Axis.vertical` |
| `mainAxisAlignment` | Same as Row/Column |
| `crossAxisAlignment` | Same as Row/Column |
| `mainAxisSize` | `max` or `min` |

## Real world example — Responsive layout
```dart
LayoutBuilder(
  builder: (context, constraints) {
    return Flex(
      direction: constraints.maxWidth > 600
          ? Axis.horizontal   // wide screen = side by side
          : Axis.vertical,    // narrow screen = stacked
      children: [
        Widget1(),
        Widget2(),
      ],
    );
  },
)
```

## Summary — When to use what
| Widget | Use when |
|--------|---------|
| `Column` | Always stacking vertically |
| `Row` | Always side by side horizontally |
| `Flex` | Direction needs to change based on screen size or logic |

## Common Mistakes
- Using `Flex` when `Row` or `Column` is simpler → just use Row/Column
- Forgetting to set `direction` → it's required, no default