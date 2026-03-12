import 'package:flutter/material.dart';

class TextWidgetsDemo extends StatelessWidget {
  const TextWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 1 — Text Widgets'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text('📝 Widget 1: Text',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Hello Flutter!'),
            const Text(
              'Styled Text — Bold, Large, Blue',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1.5,
              ),
            ),
            const Text(
              'This is a very long text that will overflow if we dont handle it properly, watch what maxLines and overflow does',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            const Text('🎨 Widget 2: RichText',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(text: 'Hello '),
                  TextSpan(
                    text: 'Flutter ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'this is '),
                  TextSpan(
                    text: 'RichText!',
                    style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text('✂️ Widget 3: SelectableText',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const SelectableText(
              'You can select and copy this text! Try long pressing on me.',
              style: TextStyle(fontSize: 16, color: Colors.green),
              cursorColor: Colors.green,
              showCursor: true,
            ),

          ],
        ),
      ),
    );
  }
}