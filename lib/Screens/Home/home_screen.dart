import 'package:flutter/material.dart';
import 'package:report_app_flutter/Data/user.dart';
import 'package:report_app_flutter/components/rounded_search_field.dart';
// import 'package:report_app_flutter/Includes/navigation.dart';
// import 'package:report_app_flutter/Screens/Home/components/body.dart';
import 'package:report_app_flutter/constants.dart';

class HomeScreen extends StatelessWidget {
  // final List<Map<String, dynamic>> data;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Navigation(title: "Home Page", showBackButton: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Explore Report Lists",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedSearchField(
              onChanged: (value) {},
              icon: Icons.search,
              placeholder: "Search Item",
            ),
            // const TextField(
            //   decoration: InputDecoration(
            //       labelText: 'Search',
            //       suffixIcon: Icon(Icons.search),
            //       border: InputBorder.none),
            // ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(users[index]["id"]),
                  color: Colors.grey[50],
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      users[index]["id"].toString(),
                      style:
                          const TextStyle(fontSize: 24, color: cPrimaryColor),
                    ),
                    title: Text(
                      users[index]["name"],
                      style:
                          const TextStyle(fontSize: 20, color: cPrimaryColor),
                    ),
                    subtitle: Text(
                      'Report : ${users[index]['report']}',
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
