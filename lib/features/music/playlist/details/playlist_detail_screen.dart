import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../play_screen/presentation/music_player_screen.dart';

class PlayListDetailScreen extends StatelessWidget {
  const PlayListDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            // color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Playlist Name',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              // color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: double.maxFinite,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  // playlist search field
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(right: 2),
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).primaryColorDark.withOpacity(.05),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.search,
                            // color: Theme.of(context).primaryColorDark,
                          ),
                          hintText: 'Find in playlist',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                          suffixIcon: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(.8),
                            ),
                            child: const Text(
                              'sort',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // playlist image container
                  Container(
                    height: 200,
                    width: 200,
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/img_10.jpg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).primaryColor.withOpacity(.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),

                  // playlist artists names rich text, text span
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By ',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextSpan(
                            text: 'Artist 1, Artist 2, Artist 3',
                            // decoration underline

                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // playlist likes and duration
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // likes rich text text span
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '1,000,000',
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextSpan(
                                  text: ' likes',
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 8),
                          Row(
                            children: [
                              // text duration
                              Text(
                                'Duration: ',
                                style: GoogleFonts.poppins(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),

                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '10',
                                      style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' hr',
                                      style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '1',
                                      style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' min',
                                      style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Theme.of(context).primaryColor.withOpacity(.3),
                            child: IconButton(
                              icon: Icon(
                                Icons.shuffle,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(width: 8),
                          CircleAvatar(
                            backgroundColor: Theme.of(context)
                                .primaryColorDark
                                .withOpacity(.3),
                            child: IconButton(
                              icon: Icon(
                                Icons.play_arrow,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // playlist tracks list
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const PlaylistTracksListWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlaylistTracksListWidget extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? subtitle;
  const PlaylistTracksListWidget(
      {super.key, this.imgUrl, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const MusicPlayerScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 11),
        height: 50,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_10.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? 'Title',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle ?? 'Subtite',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.favorite_border,
                    // color: Theme.of(context).primaryColorDark,
                  ),
                  onTap: () {},
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  child: const Icon(
                    Icons.more_vert,
                    // color: Theme.of(context).primaryColorDark,
                  ),
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
