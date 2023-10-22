class SongsModel {
  String title;
  String singers;
  String songsPath;
  String coverPath;
  SongsModel({
    required this.title,
    required this.singers,
    required this.songsPath,
    required this.coverPath,
  });

  static List<SongsModel> songsList = [
    SongsModel(
      title: "Spectre",
      singers: "Sam Mendes",
      songsPath: "",
      coverPath: "assets/cover/001.jpg",
    ),
    SongsModel(
      title: "Need for Speed",
      singers: "Scott Waugh",
      songsPath: "",
      coverPath: "assets/cover/002.jpg",
    ),
    SongsModel(
      title: "Fast X",
      singers: "Louis Leterrier",
      songsPath: "",
      coverPath: "assets/cover/003.jpg",
    ),
    SongsModel(
      title: "Avengers Endgame",
      singers: "Anthony Russo, Joe Russo",
      songsPath: "",
      coverPath: "assets/cover/004.jpg",
    ),
    SongsModel(
      title: "Resident Evil: The Final Chapter",
      singers: "Paul W. S. Anderson",
      songsPath: "",
      coverPath: "assets/cover/005.jpg",
    ),
  ];
}
