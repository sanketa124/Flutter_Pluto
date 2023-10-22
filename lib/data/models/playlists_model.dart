// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlaylistsModel {
  String title;
  String songsCount;
  String imagePath;
  PlaylistsModel({
    required this.title,
    required this.songsCount,
    required this.imagePath,
  });

  static List<PlaylistsModel> playlists = [
    PlaylistsModel(
      title: "Horror",
      songsCount: "3",
      imagePath: "assets/cover/0002.jpg",
    ),
    PlaylistsModel(
      title: "Action",
      songsCount: "10",
      imagePath: "assets/cover/0001.jpeg",
    ),
    PlaylistsModel(
      title: "Drama",
      songsCount: "12",
      imagePath: "assets/cover/0003.jpg",
    ),
    PlaylistsModel(
      title: "Thriller",
      songsCount: "6",
      imagePath: "assets/cover/0004.jpeg",
    ),
    PlaylistsModel(
      title: "Science Fiction",
      songsCount: "4",
      imagePath: "assets/cover/0005.jpg",
    ),
  ];
}
