import 'package:sangam/core/models/Tracks.dart';

class Cart {
  final Track track;
  final int numOfItem;

  Cart({required this.track, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(track: demoTracks[0], numOfItem: 2),
  Cart(track: demoTracks[1], numOfItem: 1),
  Cart(track: demoTracks[3], numOfItem: 1),
];
