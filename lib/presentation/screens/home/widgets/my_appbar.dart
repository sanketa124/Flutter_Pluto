part of 'widgets_imports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(0,161,224,1.0),
      elevation: 0.0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        VxCircle(
          radius: 40,
          backgroundImage: const DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('assets/cover/astro.png'),
          ),
        ).pOnly(right: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
