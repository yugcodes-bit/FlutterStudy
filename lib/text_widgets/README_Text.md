#  Text Widget

## What is it?
The most basic widget in Flutter for displaying a string on screen.

## When to use it?
Whenever you need to show any text — labels, headings, paragraphs.

## Key Properties
| Property | What it does |
|----------|-------------|
| `style` | Controls font size, color, weight etc |
| `maxLines` | Limits how many lines are shown |
| `overflow` | What happens when text is too long (ellipsis, clip, fade) |
| `textAlign` | Align text left, right, center |
| `letterSpacing` | Space between each character |

## Basic Example
```dart
Text(
  'Hello Flutter!',
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
)
```

## Common Mistakes
- Forgetting `overflow` when using `maxLines` → causes layout errors
- Using `Text` when you need different styles in one line → use `RichText` instead