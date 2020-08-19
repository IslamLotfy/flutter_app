import 'package:http/http.dart';

class Network {
  final String url;

  const Network(this.url);

  Future getData() async {
    Response response = await get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}
