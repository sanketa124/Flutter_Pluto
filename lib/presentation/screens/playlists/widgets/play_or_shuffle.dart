part of 'widgets_imports.dart';

class PlayOrShuffle extends StatefulWidget {
  const PlayOrShuffle({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayOrShuffle> createState() => _PlayOrShuffleState();
}

class _PlayOrShuffleState extends State<PlayOrShuffle> {
  bool isPlay = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isPlay ? 0 : MediaQuery.of(context).size.width * 0.45,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: MyColors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Play"
                        .text
                        .textStyle(TextStyle(
                          color: isPlay ? MyColors.white : MyColors.deepPurple,
                          fontSize: 17,
                        ))
                        .makeCentered(),
                    10.widthBox,
                    Icon(
                      Icons.play_circle,
                      color: isPlay ? MyColors.white : MyColors.deepPurple,
                    ),
                  ],
                ).expand(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Shuffle"
                        .text
                        .textStyle(TextStyle(
                          color: isPlay ? MyColors.deepPurple : MyColors.white,
                          fontSize: 17,
                        ))
                        .makeCentered(),
                    10.widthBox,
                    Icon(
                      Icons.shuffle_rounded,
                      color: isPlay ? MyColors.deepPurple : MyColors.white,
                    ),
                  ],
                ).expand(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
