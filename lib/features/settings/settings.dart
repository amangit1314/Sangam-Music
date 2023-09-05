import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sangam_music/core/utils/theme/colors.dart';

import '../../core/utils/theme/cubit/theme_cubit.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notificationPermissionEnabled = false;
  bool _mediaPermissionEnabled = false;
  bool _locationPermissionEnabled = false;
  bool _isDarkMode = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _checkNotificationPermissionStatus();
  // }

  // Future<void> _checkNotificationPermissionStatus() async {
  //   final status = await Permission.notification.status;
  //   setState(() {
  //     _notificationPermissionEnabled = status.isGranted;
  //   });
  // }

  // Future<void> _toggleNotificationPermission() async {
  //   if (!_notificationPermissionEnabled) {
  //     final status = await Permission.notification.request();
  //     setState(() {
  //       _notificationPermissionEnabled = status.isGranted;
  //     });
  //   } else {
  //     openAppSettings();
  //   }
  // }

  Future<void> toggleTheme() async {
    context.read<ThemeCubit>().toggleTheme();
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  Widget buildIOSSwitch(bool? value, void Function(bool)? onChanged) => Transform.scale(
        scale: 1.1,
        child: CupertinoSwitch(
          activeColor: _isDarkMode ? Colors.grey.shade800 : SangamMusicDefaultColors.primaryColor.withOpacity(.3),
          thumbColor: _isDarkMode ? Colors.white : SangamMusicDefaultColors.primaryColor,
          value: value ?? _notificationPermissionEnabled,
          onChanged: (_) => onChanged ?? toggleTheme(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: SangamMusicDefaultColors.primaryColor,
          ),
        ),
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SettingsSectionWidget(
              title: 'Notifications',
              description: 'Turn on & off notifications',
              value: _notificationPermissionEnabled,
              onValueChanged: () {},
            ),
            SettingsSectionWidget(
              title: 'Theme',
              description: 'Change theme light or dark',
              value: _isDarkMode,
              onValueChanged: toggleTheme,
            ),
            SettingsSectionWidget(
              title: 'Media Access',
              description: 'If not given wont able to access media from device',
              value: _mediaPermissionEnabled,
              onValueChanged: () {},
            ),
            SettingsSectionWidget(
              title: 'Location',
              description: 'Permission to access live location of device',
              value: _locationPermissionEnabled,
              onValueChanged: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsSectionWidget extends StatelessWidget {
  final String title;
  final String description;
  final bool value;
  final Function() onValueChanged;

  const SettingsSectionWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.value,
    required this.onValueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            activeColor: SangamMusicDefaultColors.primaryColor.withOpacity(.5),
            trackColor: Colors.black,
            thumbColor: SangamMusicDefaultColors.primaryColor,
            value: value,
            onChanged: (_) => onValueChanged(),
          ),
        ],
      ),
    );
  }
}
