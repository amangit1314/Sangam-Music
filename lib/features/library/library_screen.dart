import 'package:flutter/material.dart';
import 'package:sangam_music/features/profile/presentation/profile_page.dart';

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
                          // navigate to profile screen
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
                        onPressed: () {},
                        icon: const Icon(Icons.search, size: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add, size: 20),
                      ),
                    ],
                  ),
                ],
              ),

              // row sort icon, Recents text, grid view icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sort, size: 20),
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

              // expanded list view.builder
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 12);
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          // decoration image
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/img_10.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        // song name, artist name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Song Name',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Artist Name',
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
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
