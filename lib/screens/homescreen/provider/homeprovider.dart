

import 'package:flutter/material.dart';
import 'package:post_api_caliing1/helper/apihelper.dart';

class Homeprovider extends ChangeNotifier
{
  Future<String> createJob(String name, String job)
  async {
    ApiHelper apiHelper = ApiHelper();
    String msg = await apiHelper.postApiOfJob(name, job);
    return msg;
  }

}