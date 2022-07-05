import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_appbar.dart';
import 'package:flutter_camping_app/ui/utils/enum.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:intl/intl.dart';

import 'widgets/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          appBarOtion: AppBarOption(
        title: 'Notifications',
        isBackEnable: true,
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '${DateFormat('dd MMM yyyy').format(DateTime.now())}',
              style: ThemeUtils.descriptionTextDarkStyle.copyWith(
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
          ),
          const SizedBox(height: 10),
          NotificationItem(
            title: 'Congratulations!',
            description: 'You recieved the welcome badge',
            notificationType: NotificationType.archivement,
          ),
          NotificationItem(
            title: 'Will Smith Invite you.',
            description: 'For Catalina Island Trip.',
            notificationType: NotificationType.add,
          ),
        ],
      ),
    );
  }
}
