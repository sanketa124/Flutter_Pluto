part of 'widgets_imports.dart';

class SongsCard extends StatelessWidget {
  const SongsCard({
    Key? key,
    required this.songsList,
  }) : super(key: key);

  final List<SongsModel> songsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songsList.length,
        itemBuilder: (context, index) {
          var data = songsList[index];
          return InkWell(
            onTap: () => AutoRouter.of(context).push(SongScreen(
              songs: data,
            )),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(data.coverPath),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.37,
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.white.withOpacity(0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          data.title.text
                              .maxLines(1)
                              .overflow(TextOverflow.ellipsis)
                              .textStyle(
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      color: MyColors.deepPurple,
                                    ),
                              )
                              .make(),
                          data.singers.text
                              .maxLines(1)
                              .overflow(TextOverflow.ellipsis)
                              .textStyle(Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      color: MyColors.black))
                              .make(),
                        ],
                      ).expand(),
                      Icon(
                        Icons.play_circle,
                        color: MyColors.deepPurple,
                      )
                    ],
                  ).pSymmetric(h: 5, v: 5),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
