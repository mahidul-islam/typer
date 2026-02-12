import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final Set<String> highlightKeys;
  final String? lastKey;
  final String? nextKey;
  
  const KeyboardWidget({
    super.key,
    this.highlightKeys = const {},
    this.lastKey,
    this.nextKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213e),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF00adb5).withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(['`', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', 'Bksp']),
          const SizedBox(height: 8),
          _buildRow(['Tab', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\\']),
          const SizedBox(height: 8),
          _buildRow(['Caps', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', 'Enter'], centerOffset: 15),
          const SizedBox(height: 8),
          _buildRow(['Shift', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 'Shift'], centerOffset: 30),
          const SizedBox(height: 8),
          _buildRow(['Ctrl', 'Alt', 'Cmd', 'Space', 'Cmd', 'Alt', 'Ctrl']),
        ],
      ),
    );
  }
  
  Widget _buildRow(List<String> keys, {double centerOffset = 0}) {
    return Padding(
      padding: EdgeInsets.only(left: centerOffset),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: keys.map((key) => _buildKey(key)).toList(),
      ),
    );
  }
  
  Widget _buildKey(String key) {
    final isNextKey = nextKey?.toLowerCase() == key.toLowerCase();
    final isHighlighted = highlightKeys.contains(key.toLowerCase());
    final isSpecialKey = ['Bksp', 'Tab', 'Caps', 'Shift', 'Enter', 'Ctrl', 'Alt', 'Cmd'].contains(key);
    final isSpace = key == 'Space';
    
    double width = isSpace ? 200 : (isSpecialKey ? 60 : 40);
    
    return Container(
      width: width,
      height: 40,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isNextKey
            ? const Color(0xFF00adb5)
            : isHighlighted
                ? const Color(0xFF00adb5).withValues(alpha: 0.3)
                : const Color(0xFF1a1a2e),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isNextKey
              ? const Color(0xFF00adb5)
              : const Color(0xFF00adb5).withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          key,
          style: TextStyle(
            fontSize: isSpace ? 12 : 14,
            color: isNextKey ? const Color(0xFF1a1a2e) : const Color(0xFFeeeeee),
            fontFamily: 'Courier New',
            fontWeight: isNextKey ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
