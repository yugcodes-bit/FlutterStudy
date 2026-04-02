import 'package:flutter/material.dart';

class LinearWidgetsDemo extends StatelessWidget {
  const LinearWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 4 — Linear Layouts'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─────────────────────────────────────────
            // WIDGET 1: Column
            // ─────────────────────────────────────────
            const Text('⬇️ Widget 1: Column',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            // Basic column
            const Text('Basic Column:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              color: Colors.orange.shade50,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  _colorBox('Box 1', Colors.orange),
                  const SizedBox(height: 6),
                  _colorBox('Box 2', Colors.deepOrange),
                  const SizedBox(height: 6),
                  _colorBox('Box 3', Colors.red),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // mainAxisAlignment
            const Text('mainAxisAlignment (vertical control):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _columnAlignDemo('start',        MainAxisAlignment.start),
            const SizedBox(height: 8),
            _columnAlignDemo('center',       MainAxisAlignment.center),
            const SizedBox(height: 8),
            _columnAlignDemo('end',          MainAxisAlignment.end),
            const SizedBox(height: 8),
            _columnAlignDemo('spaceBetween', MainAxisAlignment.spaceBetween),
            const SizedBox(height: 8),
            _columnAlignDemo('spaceEvenly',  MainAxisAlignment.spaceEvenly),
            const SizedBox(height: 8),
            _columnAlignDemo('spaceAround',  MainAxisAlignment.spaceAround),

            const SizedBox(height: 16),

            // crossAxisAlignment
            const Text('crossAxisAlignment (horizontal control):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _columnCrossDemo('start',   CrossAxisAlignment.start),
            const SizedBox(height: 8),
            _columnCrossDemo('center',  CrossAxisAlignment.center),
            const SizedBox(height: 8),
            _columnCrossDemo('end',     CrossAxisAlignment.end),
            const SizedBox(height: 8),
            _columnCrossDemo('stretch', CrossAxisAlignment.stretch),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 2: Row
            // ─────────────────────────────────────────
            const Text('➡️ Widget 2: Row',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            // Basic row
            const Text('Basic Row:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              color: Colors.blue.shade50,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  _colorBox('1', Colors.blue),
                  const SizedBox(width: 6),
                  _colorBox('2', Colors.indigo),
                  const SizedBox(width: 6),
                  _colorBox('3', Colors.purple),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // mainAxisAlignment in Row
            const Text('mainAxisAlignment (horizontal control in Row):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _rowAlignDemo('start',        MainAxisAlignment.start),
            const SizedBox(height: 8),
            _rowAlignDemo('center',       MainAxisAlignment.center),
            const SizedBox(height: 8),
            _rowAlignDemo('end',          MainAxisAlignment.end),
            const SizedBox(height: 8),
            _rowAlignDemo('spaceBetween', MainAxisAlignment.spaceBetween),
            const SizedBox(height: 8),
            _rowAlignDemo('spaceEvenly',  MainAxisAlignment.spaceEvenly),

            const SizedBox(height: 16),

            // crossAxisAlignment in Row
            const Text('crossAxisAlignment (vertical control in Row):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _rowCrossDemo('start',  CrossAxisAlignment.start),
            const SizedBox(height: 8),
            _rowCrossDemo('center', CrossAxisAlignment.center),
            const SizedBox(height: 8),
            _rowCrossDemo('end',    CrossAxisAlignment.end),

            const SizedBox(height: 16),

            // Real world Row example
            const Text('Real world — App Header:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ☝️ pushes avatar to right, text to left
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning 👋',
                          style: TextStyle(color: Colors.white70, fontSize: 13)),
                      Text('Rahul Kumar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('RK',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 3: Flex
            // ─────────────────────────────────────────
            const Text('🔀 Widget 3: Flex',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            const Text(
              'Flex is the parent of both Row and Column.\nRow = Flex(direction: Axis.horizontal)\nColumn = Flex(direction: Axis.vertical)',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 10),

            // Flex horizontal (same as Row)
            const Text('Flex — Horizontal (same as Row):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Flex(
              direction: Axis.horizontal,
              // ☝️ Axis.horizontal = works like Row
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _colorBox('A', Colors.orange),
                _colorBox('B', Colors.deepOrange),
                _colorBox('C', Colors.red),
              ],
            ),

            const SizedBox(height: 16),

            // Flex vertical (same as Column)
            const Text('Flex — Vertical (same as Column):',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Flex(
              direction: Axis.vertical,
              // ☝️ Axis.vertical = works like Column
              mainAxisSize: MainAxisSize.min,
              // ☝️ shrinks to fit children, doesn't take full height
              children: [
                _colorBox('X', Colors.orange),
                const SizedBox(height: 6),
                _colorBox('Y', Colors.deepOrange),
                const SizedBox(height: 6),
                _colorBox('Z', Colors.red),
              ],
            ),

            const SizedBox(height: 16),

            // Flex real use — direction based on screen size
            const Text('Real use of Flex — dynamic direction:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            LayoutBuilder(
              builder: (context, constraints) {
                // ☝️ LayoutBuilder gives us the available width
                final isWide = constraints.maxWidth > 400;
                return Flex(
                  direction: isWide ? Axis.horizontal : Axis.vertical,
                  // ☝️ Wide screen → side by side, Narrow → stacked
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _colorBox('Card 1', Colors.orange),
                    const SizedBox(width: 6, height: 6),
                    _colorBox('Card 2', Colors.deepOrange),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }

  // ── Helper Widgets ────────────────────────────────

  Widget _colorBox(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  Widget _columnAlignDemo(String label, MainAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          height: 160,
          width: double.infinity,
          color: Colors.orange.shade50,
          child: Column(
            mainAxisAlignment: alignment,
            children: [
              _colorBox('A', Colors.orange),
              _colorBox('B', Colors.deepOrange),
            ],
          ),
        ),
      ],
    );
  }

  Widget _columnCrossDemo(String label, CrossAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          width: double.infinity,
          color: Colors.orange.shade50,
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: alignment,
            children: [
              _colorBox('Short', Colors.orange),
              _colorBox('A Longer Box', Colors.deepOrange),
            ],
          ),
        ),
      ],
    );
  }

  Widget _rowAlignDemo(String label, MainAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          color: Colors.blue.shade50,
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: alignment,
            children: [
              _colorBox('A', Colors.blue),
              _colorBox('B', Colors.indigo),
            ],
          ),
        ),
      ],
    );
  }

  Widget _rowCrossDemo(String label, CrossAxisAlignment alignment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Container(
          height: 70,
          color: Colors.blue.shade50,
          child: Row(
            crossAxisAlignment: alignment,
            children: [
              _colorBox('Tall\nBox', Colors.blue),
              const SizedBox(width: 6),
              _colorBox('Short', Colors.indigo),
            ],
          ),
        ),
      ],
    );
  }
}