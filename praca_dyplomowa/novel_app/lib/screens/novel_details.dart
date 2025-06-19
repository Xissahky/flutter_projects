import 'package:flutter/material.dart';

class NovelDetailsPage extends StatelessWidget {
  const NovelDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.network('https://placehold.co/400x200', height: 200, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: 32,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: BackButton(onPressed: () => Navigator.pop(context)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Novel Title', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Author • Genre • 1.2k Reads'),
                const SizedBox(height: 16),
                const Text('Summary: This is the story of a very interesting character...'),
                const SizedBox(height: 16),
                ElevatedButton(onPressed: () {}, child: const Text('Start Reading')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
