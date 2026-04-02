# 🔲 Placeholder Widget — Complete Guide

## What is it?
`Placeholder` draws a box with an X through it.
It's a developer tool — used to mark spots in your layout
where a real widget will go later.

## When to use it?
- Planning a screen layout before writing the real widgets
- Showing teammates "something goes here"
- Testing how a layout looks with different sizes
- Never in a finished/production app!

## Key Properties
| Property | What it does | Default |
|----------|-------------|---------|
| `color` | Color of the X and border | `Color(0xFF455A64)` |
| `strokeWidth` | Thickness of the lines | `2.0` |
| `fallbackWidth` | Width when no constraint given | `400` |
| `fallbackHeight` | Height when no constraint given | `400` |

## Basic Example
```dart
// Marks where a banner image will go
Placeholder(
  fallbackHeight: 200,
  color: Colors.grey,
)
```

## Real world use — Layout skeleton
```dart
Column(
  children: [
    Placeholder(fallbackHeight: 200), // banner goes here
    SizedBox(height: 10),
    Placeholder(fallbackHeight: 40),  // title goes here
    SizedBox(height: 10),
    Placeholder(fallbackHeight: 100), // content goes here
  ],
)
```
> Plan your whole screen with Placeholders first,
> then replace them one by one with real widgets.

## Common Mistakes
- Leaving Placeholder in finished app → always replace before shipping
- Forgetting `fallbackHeight` → Placeholder takes up entire screen