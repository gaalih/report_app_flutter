import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class ItemLists extends StatelessWidget {
  final List<dynamic> data;
  // final List<Map<String, dynamic>> data;
  const ItemLists({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Card(
          // key: ValueKey(data[index].id),
          key: ValueKey(index),
          color: cPrimaryLightColor,
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 10),
          // child: ListTile(
          //   leading: Text(
          //     data[index]["id"].toString(),
          //     style: const TextStyle(fontSize: 24, color: cPrimaryColor),
          //   ),
          //   title: Text(
          //     data[index]["name"],
          //     style: const TextStyle(fontSize: 20, color: cPrimaryColor),
          //   ),
          //   subtitle: Text(
          //     'Report : ${data[index]['report']}',
          //     style: const TextStyle(fontSize: 14, color: Colors.black45),
          //   ),
          // ),
        ),
      ),
    );
  }
}
