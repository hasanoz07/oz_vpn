import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oz_vpn/shared/constants/constants_instances.dart';

class GlobalBackButton extends StatelessWidget {
  const GlobalBackButton({super.key, this.onTap, this.backgroundColor, this.iconColor, this.size});
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final constants = ConstantsInstances.instance;
    final effectiveSize = size ?? 40.w;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(effectiveSize / 2),
        onTap: onTap ?? Get.back,
        child: Container(
          width: effectiveSize,
          height: effectiveSize,
          decoration: BoxDecoration(
            color: backgroundColor ?? constants.colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFE6E6E6), width: 1.5),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 16, offset: const Offset(0, 4))],
          ),
          child: Center(
            child: CustomPaint(
              size: Size.square(effectiveSize * 0.45),
              painter: _BackArrowPainter(
                color: iconColor ?? constants.colors.appBlack,
                strokeWidth: effectiveSize * 0.13,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BackArrowPainter extends CustomPainter {
  _BackArrowPainter({required this.color, required this.strokeWidth});
  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = strokeWidth
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke;
    // Figma'daki gibi kısa ve kalın bir sol ok
    final path = Path();
    path.moveTo(size.width * 0.75, size.height * 0.1);
    path.lineTo(size.width * 0.25, size.height * 0.5);
    path.lineTo(size.width * 0.75, size.height * 0.9);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
