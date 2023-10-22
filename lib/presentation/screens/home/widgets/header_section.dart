part of 'widgets_imports.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text
            .textStyle(
              Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            )
            .make(),
        action.text.textStyle(Theme.of(context).textTheme.bodyLarge).make(),
      ],
    );
  }
}
