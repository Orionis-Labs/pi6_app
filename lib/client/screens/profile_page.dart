import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/Style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // profileCard(),
            SizedBox(
              height: 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                profileSetting(
                  title: 'Settings',
                  icon: Icons.settings,
                ),
                Divider(),
                profileSetting(
                  title: 'Security',
                  icon: Icons.security,
                ),
                Divider(),
                profileSetting(
                  title: 'Contact us',
                  icon: Icons.message,
                ),
                Divider(),
                profileSetting(
                  title: 'Support',
                  icon: Icons.help,
                ),
                Divider(),
                profileSetting(
                  title: 'Help & FAQs',
                  icon: Icons.help_outline,
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
