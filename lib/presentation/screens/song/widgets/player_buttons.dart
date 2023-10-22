part of 'widgets_imports.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder<SequenceState?>(
              stream: audioPlayer.sequenceStateStream,
              builder: ((context, index) {
                return IconButton(
                    iconSize: 45,
                    onPressed: audioPlayer.hasPrevious
                        ? audioPlayer.seekToPrevious
                        : null,
                    icon: Icon(
                      Icons.skip_previous,
                      color: MyColors.white,
                    ));
              })),
          StreamBuilder<PlayerState>(
            stream: audioPlayer.playerStateStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final playerState = snapshot.data;
                final processingState = playerState!.processingState;
                if (processingState == ProcessingState.loading ||
                    processingState == ProcessingState.buffering) {
                  return IconButton(
                    iconSize: 75.0,
                    onPressed: audioPlayer.play,
                    icon: Icon(
                      Icons.play_circle,
                      color: MyColors.white,
                    ),
                  );
                } else if (!audioPlayer.playing) {
                  return IconButton(
                    iconSize: 75.0,
                    onPressed: audioPlayer.play,
                    icon: Icon(
                      Icons.play_circle,
                      color: MyColors.white,
                    ),
                  );
                } else if (processingState != ProcessingState.completed) {
                  return IconButton(
                    iconSize: 75.0,
                    onPressed: audioPlayer.pause,
                    icon: Icon(
                      Icons.pause_circle,
                      color: MyColors.white,
                    ),
                  );
                } else {
                  return IconButton(
                    iconSize: 75.0,
                    onPressed: () => audioPlayer.seek(Duration.zero,
                        index: audioPlayer.effectiveIndices!.first),
                    icon: Icon(
                      Icons.replay_circle_filled_outlined,
                      color: MyColors.white,
                    ),
                  );
                }
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          StreamBuilder<SequenceState?>(
              stream: audioPlayer.sequenceStateStream,
              builder: ((context, index) {
                return IconButton(
                    iconSize: 45,
                    onPressed:
                        audioPlayer.hasNext ? audioPlayer.seekToNext : null,
                    icon: Icon(
                      Icons.skip_next,
                      color: MyColors.white,
                    ));
              })),
        ],
      ),
    );
  }
}
