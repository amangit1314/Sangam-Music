import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam_music/features/home/data/data.dart';
import 'package:sangam_music/features/profile/presentation/profile_page.dart';

import '../../../../core/utils/theme/colors.dart';
import '../../../music/playlist/details/playlist_detail_screen.dart';
import 'grid_view_item.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopSection(),
            SizedBox(height: 20),
            RecentlyPlayedSection(),
            SizedBox(height: 20),
            TrendingNowSection(),
            SizedBox(height: 20),
            MostPopular(),
            SizedBox(height: 20),
            SongsOfTheWeek(),
          ],
        ),
      ),
    );
  }
}

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Popular',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              'See all',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: TrendingNowWidget(
                  text: 'String',
                  subText: 'String',
                  imgUrl: songs[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TrendingNowSection extends StatelessWidget {
  const TrendingNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Trending Now',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              'See all',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: TrendingNowWidget(
                  text: 'String',
                  subText: 'String',
                  imgUrl: songs[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PlayListDetailScreen();
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Opacity(
          opacity: 1,
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ProfilePage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color:
                              Theme.of(context).primaryColor.withOpacity(.02),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img_10.jpg'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Hi, Aman',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Row(
                  children: [
                    HomeAppBarIconWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ProfilePage();
                            },
                          ),
                        );
                      },
                    ),
                    HomeAppBarIconWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ProfilePage();
                            },
                          ),
                        );
                      },
                      iconData: FontAwesomeIcons.timeline,
                    ),
                    HomeAppBarIconWidget(
                      onTap: () {},
                      iconData: FontAwesomeIcons.gear,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecentlyPlayedSection extends StatelessWidget {
  const RecentlyPlayedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently Played',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: GridViewItem(text: 'String', imgUrl: songs[0]),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GridViewItem(text: 'To', imgUrl: songs[1]),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: GridViewItem(text: 'Show', imgUrl: songs[2]),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GridViewItem(text: 'Something', imgUrl: songs[3]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class HomeAppBarIconWidget extends StatelessWidget {
  final VoidCallback onTap;
  final double? size;
  final IconData? iconData;
  const HomeAppBarIconWidget({
    super.key,
    required this.onTap,
    this.size,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(.03),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: FaIcon(
            iconData ?? FontAwesomeIcons.bell,
            color: Colors.grey.shade900,
            size: size ?? 16,
          ),
        ),
      ),
    );
  }
}

class TrendingNowWidget extends StatelessWidget {
  final String? text;
  final String? imgUrl;
  final String? subText;
  final VoidCallback? onTap;
  const TrendingNowWidget({
    super.key,
    this.text,
    this.imgUrl,
    this.subText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 156,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text ?? 'Lift me up',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            subText ?? 'Rihanna',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 10, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class SongsOfTheWeek extends StatelessWidget {
  final String? text;
  final String? imgUrl;
  final String? subText;
  const SongsOfTheWeek({
    super.key,
    this.text,
    this.imgUrl,
    this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Songs of the week',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              'See all',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 500,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SongOfTheWeekWidget(
                  text: 'String',
                  subText: 'String',
                  imgUrl: songs[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SongOfTheWeekWidget extends StatelessWidget {
  final String? text;
  final String? imgUrl;
  final String? subText;
  const SongOfTheWeekWidget({super.key, this.text, this.imgUrl, this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).primaryColor.withOpacity(.03),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imgUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lift me up',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.normal),
                ),
                Text(
                  'Rihanna',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 10, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).primaryColor.withOpacity(.1),
                ),
                child: Text(
                  '+20%',
                  style: TextStyle(
                    fontSize: 8,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
