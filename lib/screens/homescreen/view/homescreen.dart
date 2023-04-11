import 'package:flutter/material.dart';
import 'package:post_api_caliing1/screens/homescreen/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController txtName = TextEditingController(text: "Akhil");
  TextEditingController txtJob = TextEditingController(text: "CEO");


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(controller: txtName),
            SizedBox(height: 10,),
            TextField(controller: txtJob),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () async {
              String name = txtName.text;
              String job = txtJob.text;
              String msg = await Provider.of<Homeprovider>(context,listen: false).createJob(name, job);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$msg")));
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
