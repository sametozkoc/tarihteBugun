import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:tarihte/model/tarih_model.dart';

class TarihServis {
  static Future<List<Tarihtebugun>?> getTarih() async {
  String url = "https://api.ubilisim.com/tarihtebugun/";

  final response = await http.get(Uri.parse(url));
  if (response.body.isNotEmpty) {
    final responseJson = jsonDecode(response.body);
    Tarihte tarih = Tarihte.fromJson(responseJson);
    return tarih.tarihtebugun;
  }
  return null;
  }
}
