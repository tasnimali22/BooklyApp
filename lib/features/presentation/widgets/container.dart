import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomContainerImage extends StatelessWidget {
  const CustomContainerImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(imageUrl: image,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) =>const Icon(Icons.image_not_supported_rounded),),
      ),
    );
  }
}
