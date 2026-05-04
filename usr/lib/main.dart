import 'package:flutter/material.dart';

void main() {
  runApp(const EBankingScopeApp());
}

class EBankingScopeApp extends StatelessWidget {
  const EBankingScopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scope of Study: E-Banking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Deep blue for banking
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScopeOfStudyScreen(),
      },
    );
  }
}

class ScopeOfStudyScreen extends StatelessWidget {
  const ScopeOfStudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Research Scope', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Scope of the Study',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E3A8A),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'A Study on Customer Satisfaction Towards E-Banking',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 32),
                _buildSection(
                  context,
                  icon: Icons.public,
                  title: '1. Geographical Scope',
                  content: 'The study is conducted among active e-banking users. While the digital nature of e-banking removes physical boundaries, the primary data collection focuses on a representative demographic (e.g., specific urban and semi-urban areas) to gauge localized adoption and satisfaction levels.',
                ),
                _buildSection(
                  context,
                  icon: Icons.people_alt,
                  title: '2. Target Audience (Demographic Scope)',
                  content: 'The respondents comprise individual retail banking customers who have used internet banking or mobile banking applications at least once in the past six months. It includes diverse age groups, educational backgrounds, and income levels to ensure a comprehensive analysis.',
                ),
                _buildSection(
                  context,
                  icon: Icons.account_tree,
                  title: '3. Conceptual & Thematic Scope',
                  content: 'The research is confined to evaluating customer satisfaction based on key e-banking dimensions:\n'
                      '• Ease of Use & Navigation\n'
                      '• Security & Privacy of Transactions\n'
                      '• Service Reliability & Server Uptime\n'
                      '• Transaction Speed & Efficiency\n'
                      '• Responsiveness of Customer Support',
                ),
                _buildSection(
                  context,
                  icon: Icons.calendar_month,
                  title: '4. Period of Study',
                  content: 'The research relies on primary data collected over a specific timeframe during the current academic or financial year, reflecting current technological trends and recent user experiences in the banking sector.',
                ),
                _buildSection(
                  context,
                  icon: Icons.block,
                  title: '5. Limitations & Boundaries',
                  content: '• The study primarily focuses on retail/individual customers and excludes corporate e-banking.\n'
                      '• It evaluates online and mobile banking, excluding ATM and physical point-of-sale (POS) terminal satisfaction.\n'
                      '• Findings are based on user perceptions and self-reported data.',
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required IconData icon, required String title, required String content}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
