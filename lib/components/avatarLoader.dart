import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AvatarLoader extends StatelessWidget {
  final String imageUrl;

  const AvatarLoader({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadImage(imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.transparent,
          );
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
            ),
          );
        }
      },
    );
  }

  // TODO: 避免每次页面刷新都加载图片
  Future<void> _loadImage(String url) async {
    final completer = Completer<void>();
    final image = NetworkImage(url);
    final listener = ImageStreamListener((_, __) {
      completer.complete();
    });
    image.resolve(const ImageConfiguration()).addListener(listener);
    await completer.future;
  }
}