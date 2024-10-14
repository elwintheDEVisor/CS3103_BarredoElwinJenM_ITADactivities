import 'package:flutter/material.dart';
import 'immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'),
        backgroundColor: const Color.fromARGB(82, 45, 75, 193),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(82, 45, 75, 193),
              ),
              child: Text(
                'My CV',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10),
              title: const Text('Education'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10),
              title: const Text('Skills'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10),
              title: const Text('Projects'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10),
              title: const Text('Experience'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: const ImmutableWidget(),
    );
  }
}
