import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';
import 'package:project_fatiha/widgets/items/bottom_circle_item.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';

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
      body: Card(
        elevation: 2,
        margin: customStyles.mainMarginWithoutBottom,
        shape: customStyles.mainShapeRadius,
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Divider(indent: 16, endIndent: 16),
                MainItem(title:'Таджвид Суры'),
                const Divider(indent: 16, endIndent: 16),
                MainItem(title:'Таджвид Суры'),
                const Divider(indent: 16, endIndent: 16),
                MainItem(title:'Таджвид Суры'),
                const Divider(indent: 16, endIndent: 16),
                MainItem(title:'Таджвид Суры'),
                const Divider(indent: 16, endIndent: 16),
                MainItem(title:'Таджвид Суры'),
                const Divider(indent: 16, endIndent: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Card(
        elevation: 2,
        margin: customStyles.mainMargin,
        shape: customStyles.mainShapeRadius,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BottomCircleItem(icon: CupertinoIcons.share, color: Colors.red),
              BottomCircleItem(icon: CupertinoIcons.star, color: Colors.blue),
              BottomCircleItem(icon: CupertinoIcons.collections, color: Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
