import 'package:flutter/material.dart';
import 'artwork.dart';

class ArtworkDetailPage extends StatelessWidget {
  final Artwork artwork;

  const ArtworkDetailPage({super.key, required this.artwork});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(artwork.title)),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(artwork.imageUrl),
          const SizedBox(height: 16),
          Text(artwork.title,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text("Artist: ${artwork.artist}",
              style: const TextStyle(fontSize: 18)),
          Text("Period: ${artwork.period}",
              style: const TextStyle(fontSize: 18)),
          Text("Style: ${artwork.style}", style: const TextStyle(fontSize: 18)),
        ]));
  }
}
