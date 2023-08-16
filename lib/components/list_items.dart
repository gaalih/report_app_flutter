import 'package:flutter/material.dart';
import 'package:report_app_flutter/constants.dart';

class LitsItems extends StatelessWidget {
  final List<dynamic> data;
  const LitsItems({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total height and width  of screen
    return SingleChildScrollView(
      child: Container(
        alignment: AlignmentDirectional.topCenter,
        width: double.infinity,
        height: size.height * 0.76,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        color: cBgColor,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: cPrimaryLightColor,
              child: ListTile(
                title: Text(data[index].name),
                subtitle: Text(data[index].report),
              ),
            );
          },
        ),
      ),
    );
  }
}
