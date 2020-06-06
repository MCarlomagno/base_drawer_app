import 'package:http/http.dart' as http;

class QuandlService {
  String sampleUrl =
      'https://www.quandl.com/api/v3/datasets/WGEN/GUY_SL_EMP_UNDR_FE_ZS?start_date=2017-12-31&end_date=2017-12-31&api_key=bfyTDxRheky4onfAYSH_';
  var client = http.Client();

  sampleHttpRequest() async {
    try {
      var uriResponse = await client.get(this.sampleUrl);
      print('sample request response code: ' + uriResponse.statusCode.toString());
    } finally {
      client.close();
    }
  }
}
