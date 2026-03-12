# 🎨 RichText Widget

## What is it?
A widget that displays text with MULTIPLE styles in a single line/paragraph.
Unlike `Text`, different parts can have completely different colors, sizes, fonts.

## When to use it?
- "Terms and **Conditions**" → bold one word
- "Price: ~~$100~~ $80" → strikethrough + normal
- Any text where parts need different styling

## Key Properties
| Property | What it does |
|----------|-------------|
| `text` | Takes a `TextSpan` as root |
| `TextSpan.style` | Default style inherited by all children |
| `TextSpan.children` | List of `TextSpan`, each can override style |
| `TextDecoration` | underline, lineThrough, overline |

## Basic Example
```dart
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 18, color: Colors.black),
    children: [
      TextSpan(text: 'Normal '),
      TextSpan(
        text: 'Bold Blue ',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'Underlined Red',
        style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
      ),
    ],
  ),
)
```

## Common Mistakes
- Using `RichText` inside a `const` parent → causes red errors
- Forgetting that children INHERIT parent TextSpan style