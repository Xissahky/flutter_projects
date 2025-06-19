import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          const CircleAvatar(
            backgroundImage: NetworkImage('https://placehold.co/32x32'),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Popular Novels', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _buildNovelCard(),
          const SizedBox(height: 20),
          const Text('Recommended', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _buildNovelCard(),
        ],
      ),
    );
  }

  Widget _buildNovelCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network('https://placehold.co/60x90', height: 90),
        ),
        title: const Text('Novel Title'),
        subtitle: const Text('By Author'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
