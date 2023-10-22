part of 'playlists_screen_imports.dart';

class PlaylistsScreen extends StatefulWidget {
  const PlaylistsScreen({super.key});

  @override
  State<PlaylistsScreen> createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  PlaylistsModel playlistsModel = PlaylistsModel.playlists[0];
  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0,161,224,0.4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: "Playlists".text.makeCentered(),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              20.heightBox,
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  playlistsModel.imagePath,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  fit: BoxFit.cover,
                ),
              ).centered(),
              10.heightBox,
              playlistsModel.title.text
                  .textStyle(Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold))
                  .make(),
              10.heightBox,
              const PlayOrShuffle().pSymmetric(h: 20),
              10.heightBox,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: PlaylistsModel.playlists.length,
                itemBuilder: (context, index) {
                  var data = PlaylistsModel.playlists[index];
                  return ListTile(
                    leading: CircleAvatar(
                    child: Image.asset(data.imagePath,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.cover,
                  )),
                    title: data.title.toString().text.make(),
                    subtitle: "${data.songsCount} songs".text.make(),
                    trailing: Icon(
                      Icons.more_vert,
                      color: MyColors.white,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
