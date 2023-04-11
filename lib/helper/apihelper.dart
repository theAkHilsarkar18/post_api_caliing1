import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  Future<String> postApiOfJob(String name, String job)
  async {
    String link = "https://reqres.in/api/users";
    Uri apiLink = Uri.parse(link);
    var json = await http.post(apiLink,body: {"name":name,"job":job,});
    if(json.statusCode==201)
      {
        return "Created Successful";
      }
    return "Error 404";
  }
}