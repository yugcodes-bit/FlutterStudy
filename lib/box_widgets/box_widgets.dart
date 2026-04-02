import 'package:flutter/material.dart';

class BoxWidgetsDemo extends StatelessWidget {
  const BoxWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 3 — Box & Space Widgets'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─────────────────────────────────────────
            // WIDGET 1: Container
            // ─────────────────────────────────────────
            const Text('📦 Widget 1: Container',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            // Basic container with color
            const Text('Basic — color only:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: 200,
              height: 80,
              color: Colors.indigo,
            ),

            const SizedBox(height: 16),

            // Container with child text
            const Text('With child:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: 200,
              height: 80,
              color: Colors.indigo,
              alignment: Alignment.center,
              // ☝️ centers the child INSIDE the container
              child: const Text(
                'Hello!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            const SizedBox(height: 16),

            // Container with BoxDecoration
            const Text('With BoxDecoration — rounded + shadow:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              // ☝️ double.infinity = stretch as wide as parent allows
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(16),
                // ☝️ rounds the corners — higher number = more round
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                    // ☝️ shadow goes 4px down, 0px right
                  ),
                ],
              ),
              child: const Text(
                'Rounded container with shadow',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            const SizedBox(height: 16),

            // Container with border
            const Text('With border:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                  // ☝️ 2px thick indigo border around the container
                ),
              ),
              child: const Text(
                'Container with a border',
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            ),

            const SizedBox(height: 16),

            // Container with gradient
            const Text('With gradient background:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.indigo, Colors.purple],
                  // ☝️ smoothly transitions from indigo to purple
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  // ☝️ direction: left → right
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Gradient Container',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 2: SizedBox
            // ─────────────────────────────────────────
            const Text('📐 Widget 2: SizedBox',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            // As a spacer
            const Text('As a vertical spacer between items:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(color: Colors.red, height: 40, width: double.infinity),
            const SizedBox(height: 20), // ← 20px gap
            Container(color: Colors.green, height: 40, width: double.infinity),
            const SizedBox(height: 20), // ← 20px gap
            Container(color: Colors.blue, height: 40, width: double.infinity),

            const SizedBox(height: 16),

            // As a fixed size box with child
            const Text('As a fixed size box:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            SizedBox(
              width: 150,
              height: 150,
              // ☝️ forces child to be exactly 150x150
              child: Container(
                color: Colors.indigo.shade100,
                alignment: Alignment.center,
                child: const Text('I am forced\n150×150',
                    textAlign: TextAlign.center),
              ),
            ),

            const SizedBox(height: 16),

            // SizedBox.expand
            const Text('SizedBox.expand — fills all available space:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            SizedBox(
              height: 80,
              child: SizedBox.expand(
                // ☝️ forces child to fill ALL available width and height
                child: Container(
                  color: Colors.indigo.shade200,
                  alignment: Alignment.center,
                  child: const Text('SizedBox.expand fills everything'),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 3: Placeholder
            // ─────────────────────────────────────────
            const Text('🔲 Widget 3: Placeholder',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            const Text('Basic Placeholder:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            const Placeholder(),
            // ☝️ Draws a box with an X through it
            // Used during development to mark "something goes here"

            const SizedBox(height: 16),

            // Placeholder with fixed size
            const Text('Sized Placeholder:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            const Placeholder(
              fallbackHeight: 120,
              fallbackWidth: double.infinity,
              // ☝️ fallback size when it has no parent size constraints
              color: Colors.indigo,
              // ☝️ color of the X and border
              strokeWidth: 3,
              // ☝️ thickness of the lines
            ),

            const SizedBox(height: 16),

            // Real world use — building a layout skeleton
            const Text('Real world — layout planning skeleton:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Column(
              children: [
                // Where the banner image will go
                const Placeholder(fallbackHeight: 150, color: Colors.grey),
                const SizedBox(height: 10),
                // Where the title will go
                const Placeholder(fallbackHeight: 30, color: Colors.grey),
                const SizedBox(height: 10),
                // Where two cards will go side by side
                Row(
                  children: [
                    Expanded(
                      child: Placeholder(
                        fallbackHeight: 80,
                        color: Colors.indigo.shade300,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Placeholder(
                        fallbackHeight: 80,
                        color: Colors.indigo.shade300,
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}