import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F5F5),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildSection('Professional Goal', 'To become a skilled and innovative software developer, contributing to cutting-edge projects and continuously expanding my knowledge in the field of technology.'),
            const SizedBox(height: 20),
            _buildSection('Education', 'Bachelor of Science in Computer Science\nBatangas State University\nExpected Graduation: 2025'),
            const SizedBox(height: 20),
            _buildSection('Skills', 'Programming Languages: Java, Python, C++\nWeb Technologies: HTML, CSS, JavaScript\nMobile Development: Flutter\nDatabase: SQL\nVersion Control: Git'),
            const SizedBox(height: 20),
            _buildSection('Projects', '• Personal CV App (Flutter)\n• E-commerce Website (HTML, CSS, JavaScript)\n• Student Management System (Java)'),
            const SizedBox(height: 20),
            _buildSection('Experience', 'None so far'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: const Color(0xFF2D4BC1),
          child: const Text(
            'EB',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Elwin Jen Barredo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF2D4BC1)),
              ),
              SizedBox(height: 8),
              Text('+639611405162', style: TextStyle(fontSize: 16)),
              SizedBox(height: 4),
              Text('22-07108@g.batstate-u.edu.ph', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF2D4BC1)),
            ),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
