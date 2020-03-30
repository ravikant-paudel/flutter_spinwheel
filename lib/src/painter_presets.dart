import 'package:flutter/material.dart';

class PainterPresets {
  Paint get wheelPaintPreset {
    return Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.grey.shade200;
  }

  Paint get borderPaintPreset {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..color = Colors.blue.shade500;
  }

  Paint get sectorDividerPaintPreset {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..color = Colors.white;
  }

  Paint get centerPiecePaintPreset {
    return Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red.shade300.withOpacity(0.3);
  }

  Paint get highlightPaintPreset {
    return Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black.withOpacity(0.2);
  }

  Paint get shutterPaintPreset {
    return Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue.shade200;
  }
}
