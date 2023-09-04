import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam_music/features/music/playlist/search/search_in_playlists.dart';
import 'package:sangam_music/features/profile/presentation/profile_page.dart';

import '../home/data/data.dart';
import '../music/playlist/create_delete/create_playlist.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const ProfilePage(),
                            ),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(
                            'assets/images/img_10.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Your Library',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) =>
                                  const SearchInPlaylistsAndFavouitesScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.search, size: 20),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const CreatePlaylistScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.sort, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Recents',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.grid_view, size: 20),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: songs.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 15);
                  },
                  itemBuilder: (context, index) {
                    return const LibraryPlaylistWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LibraryPlaylistWidget extends StatelessWidget {
  final String playlistName;
  final String playlistCreatorName;
  final String? playlistBanner;

  const LibraryPlaylistWidget({
    super.key,
    this.playlistName = 'Playlist',
    this.playlistCreatorName = 'Playlist . Magic Records',
    this.playlistBanner,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/img_10.jpg',
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              playlistName,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              playlistCreatorName,
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
