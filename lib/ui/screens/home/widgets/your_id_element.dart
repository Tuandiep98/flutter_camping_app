part of '../home_screen.dart';

class YourIDElement extends StatelessWidget {
  const YourIDElement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: ThemeUtils.greenish,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'your ID',
              style: ThemeUtils.descriptionTextStyle.copyWith(
                color: ThemeUtils.darkGreen,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CMP21992822',
                  style: ThemeUtils.titleTextDarkStyle.copyWith(
                    color: ThemeUtils.darkGreen,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.copy,
                  color: ThemeUtils.darkGreen,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
