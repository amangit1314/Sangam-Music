import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                // row (column (playing from playlist, playlist name), vertical eliipsis icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // back icon
                        IconButton(
                          onPressed: () {
                            // navigator pop context
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Theme.of(context).primaryColorDark,
                            size: 24,
                          ),
                        ),

                        // column (playing from playlist, playlist name)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // playing from playlist
                            Text(
                              'Playing from playlist',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            // playlist name
                            Text(
                              'Playlist name',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .primaryColorDark
                                    .withOpacity(.5),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // vertical eliipsis icon
                    Icon(
                      Icons.more_vert,
                      color: Theme.of(context).primaryColorDark,
                      size: 24,
                    ),
                  ],
                ),

                // Container, which will have border which will describe the duration of song, and center container with the image of song
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: MyAnimatedContainer(),
                ),

                // row (column (song name, artist name), vertical eliipsis icon)
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // column (song name, artist name)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // song name
                          Text(
                            'Song name',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // artist name
                          Text(
                            'Artist name',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(.5),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      // vertical eliipsis icon
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.share,
                            color: Theme.of(context).primaryColorDark,
                            size: 22,
                          ),
                          const SizedBox(width: 15),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // music player ui, column(line, row(start time, end time) )
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // line
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 3,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),

                    // row (start time, end time)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // start time
                          Text(
                            '00:00',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 10,
                            ),
                          ),

                          // end time
                          Text(
                            '00:00',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // row (shuffle icon, font awesome previous icon, play circle icon, font awesome forward icon, loop icon)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // shuffle icon
                            Icon(
                              Icons.shuffle,
                              color: Theme.of(context).primaryColorDark,
                            ),

                            // font awesome previous icon
                            FaIcon(
                              FontAwesomeIcons.backwardStep,
                              color: Theme.of(context).primaryColorDark,
                            ),

                            // play circle icon
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Theme.of(context).primaryColorDark,
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),

                            // font awesome forward icon
                            Icon(
                              FontAwesomeIcons.forwardStep,
                              color: Theme.of(context).primaryColorDark,
                            ),

                            // loop icon
                            Icon(
                              Icons.loop,
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // stack (container(decoration image), column(text, row(column(text1, text2), follow btn)))
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Stack(
                    children: [
                      // container(decoration image)
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img_10.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(.5),
                              spreadRadius: 1,
                              blurRadius:
                                  10, // Adjust the value for the desired effect
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                      ),

                      // column(text, row(column(text1, text2), follow btn))
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(.7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // text
                                const Text(
                                  'About the artist',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // row(column(text1, text2), follow btn)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // column(text1, text2)
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // text1
                                        Text(
                                          'Artist name',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),

                                        // text2
                                        Text(
                                          '200000 monthly listeners',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),

                                    // follow btn
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                        // border of white30 color
                                        border: Border.all(
                                          color: Colors.white30,
                                          width: 1,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Follow',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: isHovered ? 1 : 0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/img_3.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).primaryColorDark.withOpacity(.5),
                  spreadRadius: 1,
                  blurRadius: 10 +
                      (5 * value), // Adjust the value for the desired effect
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
