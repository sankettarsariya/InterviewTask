import 'package:flutter/material.dart';
import 'package:fluttertask/Components/EquityTile.dart';
import 'package:fluttertask/Screens/BidBuyShare.dart';
import 'package:fluttertask/Screens/SubmitScreen.dart';


class AllinOneData extends StatefulWidget {
  final String headText;
  final List equityData;
 // final Function onPress;

  const AllinOneData(
      { Key? key,
      required this.equityData,
      required this.headText, //required this.onPress,
     })
      : super(key: key);

  @override
  _AllinOneDataState createState() => _AllinOneDataState();
}

class _AllinOneDataState extends State<AllinOneData> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    const double itemHeight =90;
    final double itemWidth = size.width / 2;

    return GridView.builder(
      physics:  NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio:  (itemWidth / itemHeight),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        // childAspectRatio: 0.826,
      ),
      shrinkWrap: true,
      itemCount: widget.equityData.length,
      itemBuilder: (BuildContext context, int index) {
        return  EquityTile(
          onPress: (){
            print('dsfsdfsdf');
            Navigator.push(context, MaterialPageRoute(builder: (context) => BidBuyShare()));
          },
        );
      },
    );
  }
}
