import 'package:http/http.dart' as http;

// const _authority = "sameer-kumar-aztro-v1.p.rapidapi.com";
// const _path = "/";
// const _query = {"sign": "aquarius", "day": "today"};

const geoApiKey = '';
const apiKey = '56aec83f15msh46bb270847e4a6dp19df45jsnbcf26cd0fb14';
var url = Uri.https('https://shazam-core.p.rapidapi.com/v1/', 'tracks/details',
    {"offst": "18", "start": "0", "tag": ""});
const headers = '/charts/world ,  /tracks/details?trackid= {songId}';
const baseUrl =
    'https://shazam-core.p.rapidapi.com/v1/detect?timezone-India/&apiKey=$apiKey';

class ApiService {
  List endpoints = [
    'arists/details',
    'tracks/details',
    'tracks/lyrics',
    'charts/World Chart'
  ];
  static void getData() async {
    var response = await http.get(
      (Uri.parse(
          'https://shazam-core.p.rapidapi.com/v2/tracks/details?trackid=400085')),
      headers: {
        'x-rapidapi-host': 'shazam-core.p.rapidapi.com',
        'x-rapidapi-key': apiKey
      },
    );
    print(response.body);
  }
}

// create a dart function to fetch songs from sazam core api
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// class ApiService {
//   static Future<List<Article>> getArticles() async {
//     final response = await http.get(Uri.parse(baseUrl));
//     if (response.statusCode == 200) {
//       final result = jsonDecode(response.body);
//       Iterable list = result['articles'];
//       return list.map((article) => Article.fromJson(article)).toList();
//     } else {
//       throw Exception('Failed to load articles');
//     }
//   }
// }