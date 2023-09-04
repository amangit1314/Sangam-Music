import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/theme/colors.dart';
import '../../../core/utils/theme/cubit/theme_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String id = 'profile_page';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        context.watch<ThemeCubit>().state.brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      CupertinoSwitch(
                        value: isDarkMode,
                        activeColor: isDarkMode
                            ? Colors.grey.shade800
                            : SangamMusicDefaultColors.primaryColor
                                .withOpacity(.3),
                        thumbColor: isDarkMode
                            ? Colors.white
                            : SangamMusicDefaultColors.primaryColor,
                        onChanged: (value) {
                          context.read<ThemeCubit>().toggleTheme();
                        },
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/img_10.jpg',
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 80,
                      child: CircleAvatar(
                        backgroundColor: SangamMusicDefaultColors.primaryColor,
                        child: Icon(Icons.edit),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const ProfileTextItem(
                  headingText: 'Username',
                  contentText: 'Aman',
                ),
                const ProfileTextItem(
                  headingText: 'Email',
                  contentText: 'aman@gmail.com',
                ),
                const SizedBox(height: 10),
                ProfileButton(
                  text: 'Change Password',
                  onTap: () {},
                ),
                ProfileButton(
                  isLogout: true,
                  text: 'LogOut',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isLogout;
  const ProfileButton({
    super.key,
    this.isLogout = false,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.maxFinite,
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 8,
          bottom: 8,
        ),
        margin: const EdgeInsets.only(
          top: 8,
          left: 20,
          right: 20,
          bottom: 16,
        ),
        decoration: BoxDecoration(
            color: isLogout
                ? Colors.transparent
                : SangamMusicDefaultColors.popColor,
            borderRadius: BorderRadius.circular(14),
            border: isLogout
                ? Border.all(
                    width: 1, color: SangamMusicDefaultColors.primaryColor)
                : null),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTextItem extends StatelessWidget {
  final String headingText;
  final String contentText;
  final VoidCallback? onClickToUpdate;

  const ProfileTextItem({
    super.key,
    required this.headingText,
    required this.contentText,
    this.onClickToUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            headingText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 56,
          width: double.maxFinite,
          margin:
              const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 16),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: Text(contentText),
        ),
      ],
    );
  }
}
