# ⬇️ Column Widget — Complete Guide

## What is it?
`Column` stacks widgets **vertically** — one below the other.
It's one of the two most used layout widgets in Flutter (the other being Row).

## Key Properties

| Property | What it does |
|----------|-------------|
| `mainAxisAlignment` | Controls spacing **vertically** (up-down) |
| `crossAxisAlignment` | Controls alignment **horizontally** (left-right) |
| `mainAxisSize` | `max` = full height, `min` = shrink to fit children |

## The Axis Rule — Most Important Concept
```
Column runs VERTICALLY
→ mainAxis  = vertical   (up ↕ down)
→ crossAxis = horizontal (left ↔ right)
```

## mainAxisAlignment values
| Value | What it does |
|-------|-------------|
| `start` | Children at the TOP |
| `center` | Children in the MIDDLE |
| `end` | Children at the BOTTOM |
| `spaceBetween` | Equal space BETWEEN children, none at edges |
| `spaceEvenly` | Equal space everywhere including edges |
| `spaceAround` | Half space at edges, full space between |

## crossAxisAlignment values
| Value | What it does |
|-------|-------------|
| `start` | Align children to LEFT |
| `center` | Align children to CENTER |
| `end` | Align children to RIGHT |
| `stretch` | Stretch children to full width |

## Common Mistakes
- Column inside a Column with no size constraint → "unbounded height" error
- Forgetting `mainAxisSize: MainAxisSize.min` → Column takes full screen height unnecessarily
- Using Column for horizontal layout → use Row instead