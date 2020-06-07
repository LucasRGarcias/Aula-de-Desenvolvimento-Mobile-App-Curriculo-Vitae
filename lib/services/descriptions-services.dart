import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:cv/models/descriptions-models.dart';

class DataService{

  Future<PersonalData> fetchPersonalData() async {
  final response = 
    await http.get('https://cvapp-7cfad.firebaseio.com/.json');
  return PersonalData.fromJson(json.decode(response.body));

  }

  Future<List<PersonalData>> fetchPersonalDatas() async {
    final response = 
      await http.get('https://cvapp-7cfad.firebaseio.com/.json');

    List<dynamic> _list = json.decode(response.body);
    List<PersonalData> _listPersonalData = new List<PersonalData>();

    _list.forEach((data) {
        PersonalData p = PersonalData.fromJson(data);
        _listPersonalData.add(p);
     });

     return _listPersonalData;
  }

}
