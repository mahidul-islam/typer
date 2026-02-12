import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a2e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            const Text(
              'TYPER',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00adb5),
                letterSpacing: 8,
                fontFamily: 'Courier New',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Improve your typing skills',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFeeeeee),
                fontFamily: 'Courier New',
              ),
            ),
            const SizedBox(height: 80),
            
            // Practice Button
            _buildButton(
              context,
              title: 'PRACTICE',
              subtitle: 'Learn with structured lessons',
              icon: Icons.school,
              onTap: () => Get.toNamed('/practice-select'),
            ),
            
            const SizedBox(height: 32),
            
            // Test Button
            _buildButton(
              context,
              title: 'TEST',
              subtitle: 'Challenge yourself with timed tests',
              icon: Icons.timer,
              onTap: () => Get.toNamed('/test-select'),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildButton(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: const Color(0xFF16213e),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF00adb5),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00adb5).withValues(alpha: 0.3),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 48,
              color: const Color(0xFF00adb5),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFeeeeee),
                      fontFamily: 'Courier New',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF9ba4b4),
                      fontFamily: 'Courier New',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
