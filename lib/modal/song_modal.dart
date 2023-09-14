class Song {
  final String title;
  final String artist;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.artist,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Yadav Brand 2',
      artist: 'Sunny Yaduvanshi',
      url: 'assets/music/Yadav-Brand-2.mp3',
      coverUrl: 'assets/images/Yadav-Brand-2.jpg',
    ),
    Song(
      title: 'Besabriyaan',
      artist: 'Armaan Malik',
      url: 'assets/music/Besabriyaan.mp3',
      coverUrl: 'assets/images/Besabriyaan.jpg',
    ),
     Song(
      title: 'Unstoppable',
      artist: 'Sia',
      url: 'assets/music/Unstoppable.mp3',
      coverUrl: 'assets/images/Unstoppable.jpg',
    ),
     Song(
      title: 'Deva Deva',
      artist: 'Arijit Singh',
      url: 'assets/music/Deva Deva.mp3',
      coverUrl: 'assets/images/Deva Deva.jpg',
    ),
  ];
}