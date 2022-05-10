import 'package:flutter/material.dart';
import 'package:fluttertask/Components/AllinOneData.dart';
import 'package:fluttertask/Components/CommonList.dart';
import 'package:fluttertask/Components/DropdownWidget.dart';

import '../Utils/Constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List equityData = [];
  late List commonData = [];

  @override
  void initState() {
    super.initState();
    equityData.add('one');
    equityData.add('one');
    equityData.add('one');
    equityData.add('one');

    commonData.add('one');
    commonData.add('one');
    commonData.add('one');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'assets/logo.png',
            width: 100,
            height: 50,
          ),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/us.png',
                  width: 20,
                  height: 20,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/ic_notification.png',
                  width: 20,
                  height: 20,
                ),
              )),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kColorDark, kPrimaryColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.3, 0.9],
          ),
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
             const Padding(
              padding: EdgeInsets.only(left: 5),
              child: DropDownWidget(),
            ),
            const SizedBox(
              height: 20,
            ),

            //region For First Four List Data Tiles
            AllinOneData(
              equityData: equityData,
              headText: '',
            ),
            //endregion

            const SizedBox(
              height: 20,
            ),

            //region For All Common Data Tile
            CommonListData(
                equityData: commonData, headText: 'Investment Opportunity'),
            const SizedBox(
              height: 20,
            ),
            CommonListData(equityData: commonData, headText: 'Sector'),
            const SizedBox(
              height: 20,
            ),
            CommonListData(equityData: commonData, headText: 'Themes'),
            const SizedBox(
              height: 20,
            ),
            CommonListData(equityData: commonData, headText: 'Top News'),

            //endregion

            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
