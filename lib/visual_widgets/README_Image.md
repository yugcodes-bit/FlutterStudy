# 🖼️ Image Widget — Complete Guide

## What is it?
The `Image` widget displays pictures in your app.
It can load images from the **internet**, from **local app files (assets)**, or from the **device storage**.

---

## 🤔 When do you use it?
- Product photos in a shopping app
- Profile banners
- Thumbnails in a list
- Any photo or illustration in your UI

---

## 🧱 Three Ways to Load Images

| Type | Code | Use when |
|------|------|----------|
| From internet | `Image.network(url)` | Image is hosted online |
| From app files | `Image.asset('assets/img.png')` | Image is bundled inside the app |
| From device | `Image.file(file)` | User picked image from gallery |

> 💡 In this course we use `Image.network()` because it's the easiest to demo — no setup needed.

---

## 📦 Key Properties

| Property | What it does | Example |
|----------|-------------|---------|
| `width` | Width of the image box | `width: 300` |
| `height` | Height of the image box | `height: 150` |
| `fit` | How image fills its box | `fit: BoxFit.cover` |
| `loadingBuilder` | Widget shown while loading | spinner |
| `errorBuilder` | Widget shown if load fails | broken icon |

---

## 📝 From Our Code — Explained Line by Line

### Example 1 — Basic Network Image
```dart
Image.network(
  'https://picsum.photos/300/150',
  // ☝️ picsum.photos is a free service that gives you random placeholder images
  // The numbers in the URL = width/height of the image from the server

  width: 300,     // how wide the image box is in your app
  height: 150,    // how tall the image box is in your app
  fit: BoxFit.cover,
  // ☝️ fit tells Flutter what to do if image size ≠ box size
  // BoxFit.cover = fill the box completely, crop edges if needed
```

---

### Example 2 — loadingBuilder (spinner while loading)
```dart
  loadingBuilder: (context, child, loadingProgress) {
    // This function is called repeatedly while the image loads
    // loadingProgress == null means → image finished loading!

    if (loadingProgress == null) return child;
    // ☝️ Image is ready → show the actual image (child)

    return const SizedBox(
      height: 150,
      child: Center(child: CircularProgressIndicator()),
    );
    // ☝️ Image still loading → show a spinner instead
  },
```
> Without `loadingBuilder` you get an ugly blank white space while the image loads. Always add this for network images!

---

### Example 3 — errorBuilder (fallback if image breaks)
```dart
  errorBuilder: (context, error, stackTrace) {
    return const Icon(Icons.broken_image, size: 60, color: Colors.grey);
    // ☝️ If the URL is wrong or internet is off → show this instead
    // Prevents a crash or ugly red error screen
  },
```
> Always add `errorBuilder` for network images. URLs can break anytime!

---

## 🎯 BoxFit — The Most Important Concept

Think of BoxFit like CSS `object-fit`. You have a box (width/height) and an image. BoxFit decides what happens when they don't match.

```dart
// In our code we showed 3 side by side:
_buildFitExample('cover',   BoxFit.cover),
_buildFitExample('contain', BoxFit.contain),
_buildFitExample('fill',    BoxFit.fill),
```

| Value | Behaviour | Best for |
|-------|-----------|---------|
| `BoxFit.cover` | Fills box completely, crops if needed | Profile photos, banners |
| `BoxFit.contain` | Fits entire image inside box, may leave gaps | Logos, icons |
| `BoxFit.fill` | Stretches to fill box, may distort | Avoid usually |
| `BoxFit.fitWidth` | Fits width, crops height | Wide banners |
| `BoxFit.fitHeight` | Fits height, crops width | Tall posters |

> 💡 **90% of the time you'll use `BoxFit.cover`** — it looks the best for photos.

---

## ⚠️ Common Mistakes

| Mistake | Problem | Fix |
|---------|---------|-----|
| No `loadingBuilder` | Blank white space while loading | Always add a spinner |
| No `errorBuilder` | Red crash screen if URL breaks | Always add fallback icon |
| No `fit` property | Image looks stretched or wrong | Add `fit: BoxFit.cover` |
| Using `Image.asset` without setup | App crashes | Must declare asset in `pubspec.yaml` first |

---

## 🧠 Remember This
```
Network image  → Image.network(url)
Always add     → loadingBuilder (spinner) + errorBuilder (fallback)
How it fits    → BoxFit.cover for photos, BoxFit.contain for logos
```