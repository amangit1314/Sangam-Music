import 'package:http/http.dart' as http;

final String apiUrl = 'https://api.tidal.com/v1/tracks';

Future fetchTracks() async {
  final response = await http.get(Uri.parse(apiUrl), headers: {
    'Authorization': 'Bearer YOUR_API_TOKEN_HERE',
    'content-type': 'application/json'
  });

  // final jsonData = json.decode(response.body);

  // final List tracks = jsonData['items'];
}
