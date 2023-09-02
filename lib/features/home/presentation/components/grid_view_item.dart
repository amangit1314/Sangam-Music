import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final String? text;
  final String? imgUrl;
  const GridViewItem({
    super.key,
    required this.text,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(.01),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).primaryColorDark.withOpacity(.3),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imgUrl!),
                fit: BoxFit.cover,
              ),
            ),
            height: 60,
            width: 52,
          ),
          const SizedBox(width: 6),
          SizedBox(
            height: 50,
            width: 94,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text!,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                Text(
                  text!,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
