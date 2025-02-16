class Artwork {
  final String title; // Sanat eserinin adı
  final String artist; // Ressamın adı
  final String period; // Sanat dönemi
  final String style; // Sanat akımı
  final String imageUrl; // Görselin URL'si

  Artwork({
    required this.title,
    required this.artist,
    required this.period,
    required this.style,
    required this.imageUrl,
  });
}
