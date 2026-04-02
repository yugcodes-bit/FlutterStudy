# 📐 SizedBox Widget — Complete Guide

## What is it?
`SizedBox` is a simple fixed-size box.
It's most commonly used as a **spacer** between widgets,
but can also force a child widget to be a specific size.

## When to use it?
- Adding gap/space between two widgets (most common use!)
- Forcing a widget to be a specific width or height
- `SizedBox.expand` to fill all available space

## Two main uses

### Use 1 — As a spacer (most common)
```dart
Text('Widget A'),
SizedBox(height: 20), // ← 20px vertical gap
Text('Widget B'),
```
> This is the cleanest way to add space between widgets.
> Much better than using `Padding` just for spacing.

### Use 2 — As a size constraint
```dart
SizedBox(
  width: 150,
  height: 150,
  child: YourWidget(), // forced to be exactly 150x150
)
```

## SizedBox vs Container for spacing

| | SizedBox | Container |
|--|---------|-----------|
| Just spacing | ✅ Perfect — less code | Works but overkill |
| Needs color/border | ❌ Can't | ✅ Use Container |
| Performance | ✅ Lighter | Slightly heavier |

## Key Constructors
| Constructor | What it does |
|-------------|-------------|
| `SizedBox(height: 20)` | 20px vertical space |
| `SizedBox(width: 20)` | 20px horizontal space |
| `SizedBox(width: 100, height: 100)` | Fixed size box |
| `SizedBox.expand()` | Fills all available space |
| `SizedBox.shrink()` | Zero size (invisible) |

## Common Mistakes
- Using `Padding` to add space between widgets → use `SizedBox` instead, it's cleaner
- Forgetting that `SizedBox(height: 20)` only works in a `Column`, not a `Row`
- For horizontal space in a Row → use `SizedBox(width: 20)`