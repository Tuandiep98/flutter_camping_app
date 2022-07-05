import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/utils/enum.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;
  final NotificationType notificationType;
  const NotificationItem({
    Key key,
    this.title,
    this.description,
    this.notificationType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imagePath = 'assets/images/award.png';
    switch (notificationType) {
      case NotificationType.archivement:
        imagePath = 'assets/images/award.png';
        break;
      case NotificationType.approved:
        imagePath = 'assets/images/checkmark.png';
        break;
      case NotificationType.error:
        imagePath = 'assets/images/alert-circle.png';
        break;
      case NotificationType.add:
        imagePath = 'assets/images/person-add.png';
        break;
      default:
        break;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width - 40,
        height: 90,
        decoration: BoxDecoration(
          color: Color(0xffF7FEE7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffECFCCB),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  scale: 3,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? 'Congratulations!',
                  style: ThemeUtils.descriptionTextDarkStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description ?? 'You recieved the welcome badge',
                  style: ThemeUtils.descriptionTextDarkStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
