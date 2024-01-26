import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.ImageUrl});
  final String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: ImageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}
