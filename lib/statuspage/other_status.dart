import 'package:flutter/material.dart';
import 'dart:math';

class OtherStatus extends StatelessWidget {
  const OtherStatus({
    super.key,
    this.name,
    this.imageName,
    this.time,
    this.isSeen,
    this.noOfStatus,
  });

  final String? name;
  final String? time;
  final String? imageName;
  final bool? isSeen;
  final int? noOfStatus;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomPaint(
        painter:
            StatusPainter(isSeen: isSeen ?? false, noOfStatus: noOfStatus ?? 0),
        child: CircleAvatar(
          radius: 26,
          backgroundImage: imageName != null ? AssetImage(imageName!) : null,
          child: imageName == null ? Icon(Icons.person) : null,
        ),
      ),
      title: Text(
        name ?? 'Unknown User',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        "Today at, ${time ?? 'Unknown Time'}",
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[900],
        ),
      ),
    );
  }
}

double degreeToAngle(double degree) {
  return degree * pi / 180;
}

class StatusPainter extends CustomPainter {
  final bool isSeen;
  final int noOfStatus;

  StatusPainter({required this.isSeen, this.noOfStatus = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 7.0
      ..color = isSeen ? Colors.grey : Color(0xff21bfa6)
      ..style = PaintingStyle.stroke;

    drawArc(canvas, size, paint);
  }

  void drawArc(Canvas canvas, Size size, Paint paint) {
    double degree = -90;
    double arc = 360 / (noOfStatus > 0 ? noOfStatus : 1);

    for (int i = 0; i < noOfStatus; i++) {
      canvas.drawArc(
        Rect.fromLTWH(0.0, 0.0, size.width, size.height),
        degreeToAngle(degree + 4),
        degreeToAngle(arc - 8),
        false,
        paint,
      );
      degree += arc;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
