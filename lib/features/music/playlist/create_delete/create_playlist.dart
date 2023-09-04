import 'package:flutter/material.dart';
import 'package:sangam_music/core/utils/theme/colors.dart';
import 'package:sangam_music/features/profile/presentation/profile_page.dart';

class CreatePlaylistScreen extends StatefulWidget {
  static const routeName = '/CreatePlaylist';

  const CreatePlaylistScreen({Key? key}) : super(key: key);

  @override
  State<CreatePlaylistScreen> createState() => _CreatePlaylistScreenState();
}

class _CreatePlaylistScreenState extends State<CreatePlaylistScreen> {
  final TextEditingController _groupNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      'Create Playlist',
                      style: TextStyle(
                        color: SangamMusicDefaultColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Create Playlist',
              //         style: TextStyle(
              //           color: SangamMusicDefaultColors.primaryColor,
              //           fontSize: 18,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //       const SizedBox(height: 5),
              //       Text(
              //         'Enter playlist name to create a playlist',
              //         style: TextStyle(
              //           color: SangamMusicDefaultColors.lightTextColor,
              //           fontSize: 14,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 60,
                    child: CircleAvatar(
                      backgroundColor: SangamMusicDefaultColors.lightTextColor,
                      radius: 25,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Playlist Name',
                      style: TextStyle(
                        color: SangamMusicDefaultColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: SangamMusicDefaultColors.lightTextColor,
                          ),
                      controller: _groupNameController,
                      decoration: InputDecoration(
                        hintText: 'Playlist name',
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: SangamMusicDefaultColors.lightTextColor
                                      .withOpacity(.7),
                                ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ProfileButton(
                onTap: () {},
                text: 'Create Playlist',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
