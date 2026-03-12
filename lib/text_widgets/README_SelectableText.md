# ✂️ SelectableText Widget

## What is it?
Exactly like `Text` but the user can long-press to SELECT and COPY the text.
Regular `Text` widget cannot be selected at all.

## When to use it?
- Displaying emails, phone numbers, addresses
- Code snippets user might want to copy
- Any info the user may need to copy-paste

## Key Properties
| Property | What it does |
|----------|-------------|
| `style` | Same as Text — font, size, color |
| `cursorColor` | Color of the blinking cursor |
| `showCursor` | Show cursor even before selection |
| `textAlign` | Alignment of text |
| `maxLines` | Limit lines shown |

## Basic Example
```dart
SelectableText(
  'you@example.com',
  style: TextStyle(fontSize: 16, color: Colors.green),
  cursorColor: Colors.green,
  showCursor: true,
)
```

## Common Mistakes
- Using `SelectableText` inside a `const` Column → remove const from Column
- Using it for ALL text unnecessarily → only use when copy-paste makes sense