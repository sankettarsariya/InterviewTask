import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Utils/Constant.dart';

class EquityTile extends StatelessWidget {
  final Function onPress;
  const EquityTile({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: ()=>onPress(),
        child: Card(
            elevation: 6,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5,),
                Image.asset(
                  'assets/icon_home.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "DUBZ",
                      style: kTextBlack,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$10.40",
                      style: kTextPrice,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: const Text(
                      "Last Bid",
                      style: kTextGrey,
                    ),
                  ),
                ),

                const SizedBox(
                  width: 5,
                ),
              ],
            )),
      ),
    );
  }
}
