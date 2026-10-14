import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NetworkIcon extends StatelessWidget {
  const NetworkIcon({super.key, required this.url, this.size = 72});

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return Icon(Icons.apps_outlined, size: size);
    }
    final isSvg = url.toLowerCase().contains('.svg');
    if (isSvg) {
      return SvgPicture.network(
        url,
        width: size,
        height: size,
        placeholderBuilder: (_) => SizedBox(
          width: size,
          height: size,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        ),
      );
    }
    return Image.network(
      url,
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (_, _, _) => Icon(Icons.broken_image_outlined, size: size),
    );
  }
}
