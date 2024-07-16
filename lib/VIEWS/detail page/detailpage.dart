import 'package:flutter/material.dart';

import '../../app/model/json/json.dart';


class detailpage extends StatelessWidget {
  const detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    AllData? alldata = ModalRoute.of(context)!.settings.arguments as AllData?;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${alldata?.chapter}"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 250,
            alignment: Alignment.center,
            child: Text("${alldata?.sanskrit}",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 80,
          ),
          Divider(
            height: 10,
            indent: 10,
            endIndent: 10,
            color: Colors.orange,
          ),
          Text("Verses Translated in Gujarti:-"),
          SizedBox(
            height: 10,
          ),
          Text("${alldata?.gujarati}",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 80,
          ),
          Divider(
            height: 10,
            indent: 10,
            endIndent: 10,
            color: Colors.orange,
          ),
          Text(
            "Verses Translated in Hindi:-",
          ),
          SizedBox(
            height: 10,
          ),
          Text("${alldata?.hindi}",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("lib/app/model/asset/geeta.png"),
            )),
          ),
        ],
      ),
    );
  }
}
