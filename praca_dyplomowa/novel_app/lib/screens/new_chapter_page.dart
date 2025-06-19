import 'package:flutter/material.dart';

class NewChapterPage extends StatelessWidget {
  const NewChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New chapter'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Novel',
                hintText: '"Novel Name"',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Chapter Name',
                hintText: '"Chapter name" | chapter number',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Content',
                hintText: 'Paste chapter text here',
                suffixIcon: Icon(Icons.attach_file),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Extra content',
                hintText: 'Add pictures or smt else..',
                suffixIcon: Icon(Icons.attach_file),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add chapter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
