import 'package:gender_statistics/env/enviroment.dart';
import 'package:http/http.dart' as http;

class QuandlService {
  //TODO: Standarize the url building give more scalability (use the api url enum)
  String url = Enviroment.apiUrl + 'WLD_SG_WAG_EQLT_FM.json?api_key=' + Enviroment.apiKey; 
  String sampleUrl = 'https://www.quandl.com/api/v3/datasets/WGEN/ARG_SG_WAG_EQLT_FM?api_key=bfyTDxRheky4onfAYSH_';


 Future<String> sampleHttpRequest() async {
    var client = http.Client();
    try {
      var uriResponse = await client.get(this.sampleUrl);
      return uriResponse.body;
    } finally {
      client.close();
    }
  }
}
