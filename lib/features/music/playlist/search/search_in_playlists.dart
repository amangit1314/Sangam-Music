import 'package:flutter/material.dart';

import '../../../../core/utils/theme/colors.dart';

class SearchInPlaylistsAndFavouitesScreen extends StatelessWidget {
  const SearchInPlaylistsAndFavouitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.only(top: 4, bottom: 5, left: 10),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Your Library",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find your favourites',
                    style: TextStyle(
                      color: SangamMusicDefaultColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Search everything you\'ve liked, followed, or created',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: SangamMusicDefaultColors.lightTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
