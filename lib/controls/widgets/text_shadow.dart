import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text shadowText() {
  return Text(
    'MixData',
    style: GoogleFonts.lora(
      fontSize: 80,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0
        ..color = const Color(0xFF7B66FF).withOpacity(0.5),
    ),
  );
}
