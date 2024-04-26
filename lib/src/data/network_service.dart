
import 'package:http/http.dart' as http;
import 'package:store_app/src/core/api.dart';

abstract interface class Network{
  Future<String?> methodGet({required String api,String baseUrl = Apis.domain});
}

class DioNetwork implements Network{


  @override
  Future<String?> methodGet({required String api, String baseUrl = Apis.domain })async{
    try {
      final Uri url = Uri.https(baseUrl, api);
      final  response =await http.get(url);
      print("StatusCode: ${response.statusCode}");
      if (response.statusCode == 200) {
        print('DataBor: ${response.body}');
        return response.body;
      }
    } catch (e) {
      throw Exception(e);
    }

    return null;

  }

}