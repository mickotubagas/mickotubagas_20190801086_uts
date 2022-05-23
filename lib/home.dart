import 'package:flutter/material.dart';
import 'package:category_picker/category_picker.dart';
import 'package:category_picker/category_picker_item.dart';
import 'package:mickotubagas_20190801086_uts/themeColor.dart';
import 'package:mickotubagas_20190801086_uts/pangan_item.dart';
import 'package:mickotubagas_20190801086_uts/custombar.dart';
import 'package:mickotubagas_20190801086_uts/item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
                AwalanPage(),
                SizedBox(height: 45),
                for (var panganItem in panganitemList.panganItems)
                  Builder(
                    builder: (context) {
                      return ItemContainer(panganItem: panganItem);
                    },
                  )
              ],
            ),
          )),
    );
  }
}

class AwalanPage extends StatelessWidget {
  const AwalanPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar1(),
          //you could also use the spacer widget to give uneven distances, i just decided to go with a sizebox
          SizedBox(height: 30),
          title(),
          SizedBox(height: 30),
          searchBar(),
          categories(),
        ],
      ),
    );
  }
}

Widget categories() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 12),
      child: CategoryPicker(
        items: [
          CategoryPickerItem(
              value: "Rekomendasi"),
          CategoryPickerItem(
              value: "Sayuran"),
          CategoryPickerItem(
              value: "Buah-Buahan"),
          CategoryPickerItem(
              value: "Bahan Pokok"),
        ],
        onValueChanged: (value) {
          print(value.label);
        },
        backgroundColor: Colors.transparent,
        selectedItemColor: Themes.color,
        unselectedItemColor: Colors.white,
        selectedItemBorderColor: Colors.grey[100],
        unselectedItemBorderColor: Colors.grey[200],
        selectedItemTextDarkThemeColor: Colors.black,
        selectedItemTextLightThemeColor: Colors.black,
        unselectedItemTextDarkThemeColor: Colors.black,
        unselectedItemTextLightThemeColor: Colors.black,
        itemBorderRadius: BorderRadius.circular(30),
        itemHeight: 32.0,
        itemLabelFontSize: 16.0,
        categoryPickerMargin: const EdgeInsets.symmetric(vertical: 11),
        categoryPickerPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemMargin: const EdgeInsets.symmetric(horizontal: 4),
        itemPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    ),
  );
}

Widget searchBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Icon(
        Icons.search,
        color: Colors.black45,
      ),
      SizedBox(width: 20),
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Pencarian....",
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              hintStyle: TextStyle(
                color: Colors.black87,
                fontFamily: 'jaapokkienchance',
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red))),
        ),
      ),
    ],
  );
}

Widget title() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 45),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Selamat Datang",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              fontFamily: 'jaapokkienchance',
            ),
          ),
          Text(
            "Sedia Panganan",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 30,
              fontFamily: 'jaapokkienchance',
            ),
          ),
        ],
      )
    ],
  );
}