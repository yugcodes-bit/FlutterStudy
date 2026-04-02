# 📦 Container Widget — Complete Guide

## What is it?
`Container` is the most versatile widget in Flutter.
It's a box that can have a size, color, padding, border,
rounded corners, shadow, and gradient — all in one widget.

## When to use it?
- Styled boxes, cards, banners
- Adding background color behind any widget
- Rounded corners, borders, shadows
- Gradient backgrounds

## Key Properties
| Property | What it does |
|----------|-------------|
| `width` / `height` | Size of the box |
| `color` | Background color (simple) |
| `padding` | Space INSIDE the box between content and edges |
| `margin` | Space OUTSIDE the box pushing other widgets away |
| `alignment` | Where to place the child inside the box |
| `decoration` | Advanced styling — use instead of `color` for borders/gradients |
| `child` | The widget sitting inside the container |

## ⚠️ color vs decoration — Important Rule
```dart
// ❌ WRONG — cannot use both color + decoration together
Container(
  color: Colors.blue,
  decoration: BoxDecoration(...),
)

// ✅ CORRECT — put the color INSIDE decoration
Container(
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
  ),
)
```

## Examples from our code

### Rounded corners + shadow
```dart
Container(
  decoration: BoxDecoration(
    color: Colors.indigo,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.indigo.withOpacity(0.4),
        blurRadius: 10,
        offset: Offset(0, 4), // shadow goes 4px downward
      ),
    ],
  ),
)
```

### Gradient background
```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.indigo, Colors.purple],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  ),
)
```

## Common Mistakes
- Using `color` AND `decoration` together → Flutter throws an error
- Forgetting `alignment` → child sticks to top-left corner
- Using `double.infinity` for width inside a Row → causes overflow error