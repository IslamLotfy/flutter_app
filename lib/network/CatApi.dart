import 'package:flutterapp/network/Network.dart';

const String apiKey = '070f4790-a76c-48e4-b6f3-8e0826246bbd';
//1
const String catAPIURL = 'https://api.thecatapi.com/v1/breeds?';
// 2
const String catImageAPIURL = 'https://api.thecatapi.com/v1/images/search?';
// 3
const String breedString = 'breed_id=';
// 4
const String apiKeyString = '&x-api-key=$apiKey';

class CatApi {
  Future<dynamic> getCatBreeds() async {
    Network network = Network("$catAPIURL$apiKeyString");
    var catData = await network.getData();
    return catData;
  }

  Future<dynamic> getCatBreed(String breedName) async {
    Network network =
        Network("$catImageAPIURL$breedString$breedName$apiKeyString");
    var catBreed = await network.getData();
    return catBreed;
  }
}
