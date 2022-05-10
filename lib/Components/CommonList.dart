import 'package:flutter/material.dart';
import 'package:fluttertask/Components/CommonTile.dart';
import 'package:fluttertask/Components/EquityTile.dart';

import '../Screens/BidBuyShare.dart';
import '../Utils/Constant.dart';

class CommonListData extends StatefulWidget {
  final String headText;
  final List equityData;

  const CommonListData({
    Key? key,
    required this.equityData,
    required this.headText,
  }) : super(key: key);

  @override
  _CommonListDataState createState() => _CommonListDataState();
}

class _CommonListDataState extends State<CommonListData> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const double itemHeight = 130;
    final double itemWidth = size.width / 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.headText,
                style: kTextTitle,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'See all',
                  style: kTextSeeALl,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: (itemWidth / itemHeight),
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            // childAspectRatio: 0.826,
          ),
          shrinkWrap: true,
          itemCount: widget.equityData.length,
          itemBuilder: (BuildContext context, int index) {
            return  CommonTile(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BidBuyShare()));
            },);
          },
        ),
      ],
    );
  }
}
