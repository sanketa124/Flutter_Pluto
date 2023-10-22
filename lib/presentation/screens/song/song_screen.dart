part of 'song_screen_imports.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key, this.songs});

  final SongsModel? songs;

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  late final SongsModel _songsModel = widget.songs ?? SongsModel.songsList[0];

  @override
  void initState() {
    // SongsModel songsModel = SongsModel.songsList[0];

    audioPlayer.setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(Uri.parse("asset:///${_songsModel.songsPath}")),
    ]));

    // audioPlayer.setAudioSource(
    //     AudioSource.uri(Uri.parse("asset:///${songsModel.songsPath}")));

    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream,
          (Duration position, Duration? duration) {
        return SeekBarData(
            position: position, duration: duration ?? Duration.zero);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            _songsModel.coverPath,
            fit: BoxFit.cover,
          ),
          const BackgroundShader(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StreamBuilder<SeekBarData>(
                  stream: _seekBarDataStream,
                  builder: ((context, snapshot) {
                    final positionData = snapshot.data;
                    return SeekBar(
                      songs: _songsModel,
                      position: positionData?.position ?? Duration.zero,
                      duration: positionData?.duration ?? Duration.zero,
                      onChangedEnd: audioPlayer.seek,
                    );
                  })),
              10.heightBox,
              PlayerButtons(audioPlayer: audioPlayer),
            ],
          ).pOnly(bottom: 100),
        ],
      ),
    );
  }
}
