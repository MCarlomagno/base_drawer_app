import 'package:gender_statistics/env/enviroment.dart';
import 'package:http/http.dart' as http;

class QuandlService {
  //TODO: Standarize the url building give more scalability (use the api url enum)
  String url = Enviroment.apiUrl + 'ARG_SP_DYN_IMRT_FE_IN.json?api_key=' + Enviroment.apiKey; 


 Future<String> sampleHttpRequest() async {
    var client = http.Client();
    try {
      var uriResponse = await client.get(this.url);
      return uriResponse.body;
    } finally {
      client.close();
    }
  }
}
