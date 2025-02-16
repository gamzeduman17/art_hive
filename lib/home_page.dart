import 'package:flutter/material.dart';
import 'artwork.dart'; // Artwork modelini içe aktarıyoruz
import 'artwork_detail_page.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<Artwork> artworks = [
    Artwork(
      title: "Mona Lisa",
      artist: "Leonardo da Vinci",
      period: "Renaissance",
      style: "Portrait",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg",
    ),
    Artwork(
      title: "Starry Night",
      artist: "Vincent van Gogh",
      period: "Post-Impressionism",
      style: "Landscape",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/e/ea/The_Starry_Night.JPG",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Art Hive')),
      body: ListView.builder(
        itemCount: artworks.length,
        itemBuilder: (context, index) {
          final artwork = artworks[index];
          return ListTile(
            leading: Image.network(
              artwork.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(artwork.title),
            subtitle: Text("${artwork.artist} - ${artwork.period}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArtworkDetailPage(artwork: artwork),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
