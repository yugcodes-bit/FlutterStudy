import 'package:flutter/material.dart';

class VisualWidgetsDemo extends StatelessWidget {
  const VisualWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 2 — Visual Widgets'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─────────────────────────────────────────
            // WIDGET 1: Icon
            // ─────────────────────────────────────────
            const Text('🔷 Widget 1: Icon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            const Icon(Icons.home),
            const SizedBox(height: 10),

            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            ),
            const SizedBox(height: 10),

            const Row(
              children: [
                Icon(Icons.star,     color: Colors.amber,  size: 36),
                Icon(Icons.share,    color: Colors.blue,   size: 36),
                Icon(Icons.delete,   color: Colors.red,    size: 36),
                Icon(Icons.settings, color: Colors.grey,   size: 36),
                Icon(Icons.camera,   color: Colors.purple, size: 36),
              ],
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 2: Image
            // ─────────────────────────────────────────
            const Text('🖼️ Widget 2: Image',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            const Text('Network Image:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),

            Image.network(
              'https://picsum.photos/300/150',
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  height: 150,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 60, color: Colors.grey);
              },
            ),

            const SizedBox(height: 20),

            const Text('BoxFit Values Compared:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFitExample('cover',   BoxFit.cover),
                _buildFitExample('contain', BoxFit.contain),
                _buildFitExample('fill',    BoxFit.fill),
              ],
            ),

            const SizedBox(height: 30),

            // ─────────────────────────────────────────
            // WIDGET 3: CircleAvatar
            // ─────────────────────────────────────────
            const Text('👤 Widget 3: CircleAvatar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            const Text('With initials:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal,
                  child: Text(
                    'AB',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    'JD',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, color: Colors.white, size: 28),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Text('With network image:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            const Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=9'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Text('Real world usage — ListTile:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Text('RK', style: TextStyle(color: Colors.white)),
                    ),
                    title: Text('Raj Kumar'),
                    subtitle: Text('Flutter Developer'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
                    ),
                    title: Text('Priya Sharma'),
                    subtitle: Text('UI Designer'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  // ✅ Helper method — INSIDE class, OUTSIDE build()
  Widget _buildFitExample(String label, BoxFit fit) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 2),
          ),
          child: Image.network(
            'https://picsum.photos/200/300',
            fit: fit,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

} // ← class ends here