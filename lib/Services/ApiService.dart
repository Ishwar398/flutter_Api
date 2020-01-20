import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<String> getCall() async {
    var resp = await http.get('http://10.0.2.2:51486/api/values');

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      return null;
    }
  }

  Future<String> postCall() async{
    var bodyObj = new Map<String,String>();
    bodyObj["value"]="Test From Flutter";
    
    http.post('http://10.0.2.2:51486/api/SamplePost',body: bodyObj).then((http.Response response){

    });
  }
}
