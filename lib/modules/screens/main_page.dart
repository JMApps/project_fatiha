import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final customStyles = CustomStyles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 150),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: customStyles.bottomShapeRadius,
              floating: false,
              pinned: true,
              primary: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                title: Text(
                  'الفاتحة',
                  style: TextStyle(
                    fontFamily: 'Mothanna',
                    color: Colors.deepOrange.shade300,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 3,
            margin: customStyles.mainMargin,
            shape: customStyles.mainShapeRadius,
            child: SizedBox(
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
