part of 'widgets_imports.dart';

class PlaylistsCard extends StatelessWidget {
  const PlaylistsCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final PlaylistsModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.playlistBg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage(data.imagePath),
                    ),
                  ),
                ),
                10.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    data.title.text
                        .textStyle(
                          Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: MyColors.white,
                              ),
                        )
                        .make(),
                    "${data.songsCount} movies"
                        .text
                        .textStyle(
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: MyColors.white,
                              ),
                        )
                        .make(),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.play_circle,
              color: MyColors.white,
            )
          ],
        ).pSymmetric(h: 10),
      ),
    );
  }
}
