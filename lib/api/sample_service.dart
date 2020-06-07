import 'package:base_drawer_app/env/enviroment.dart';
import 'package:http/http.dart' as http;

class SampleService {
  String url = Enviroment.apiUrl + Enviroment.apiKey; 


 Future<String> sampleHttpRequest() async {
    var client = http.Client();
    try {
      var uriResponse = await client.get(this.url);
      return "";
    } finally {
      client.close();
    }
  }
}
