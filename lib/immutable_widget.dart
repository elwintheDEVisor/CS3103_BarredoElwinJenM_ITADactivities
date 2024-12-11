import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 20),
            _buildSection(context, 'Professional Goal', 'To become a skilled and innovative software developer, contributing to cutting-edge projects and continuously expanding my knowledge in the field of technology.'),
            const SizedBox(height: 20),
            _buildSection(context, 'Education', 'Bachelor of Science in Computer Science\nBatangas State University\nExpected Graduation: 2025'),
            const SizedBox(height: 20),
            _buildSection(context, 'Skills', 'Programming Languages: Java, Python, C++\nWeb Technologies: HTML, CSS, JavaScript\nMobile Development: Flutter\nDatabase: SQL\nVersion Control: Git'),
            const SizedBox(height: 20),
            _buildSection(context, 'Projects', '• Personal CV App (Flutter)\n• E-commerce Website (HTML, CSS, JavaScript)\n• Student Management System (Java)'),
            const SizedBox(height: 20),
            _buildSection(context, 'Experience', 'None so far'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Theme.of(context).primaryColor,
          child: const Text(
            'EB',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Elwin Jen Barredo',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 8),
              Text('+639611405162', style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 4),
              Text('22-07108@g.batstate-u.edu.ph', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
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
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(content, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}

