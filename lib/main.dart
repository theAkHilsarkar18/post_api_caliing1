import 'package:flutter/material.dart';
import 'package:post_api_caliing1/screens/homescreen/provider/homeprovider.dart';
import 'package:post_api_caliing1/screens/homescreen/view/homescreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
        },
      ),
    ),
  );
}
