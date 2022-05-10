
import 'package:flutter/material.dart';

import '../Utils/Constant.dart';

class CommonTile extends StatelessWidget {

  final Function onTap;

  const CommonTile({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: ()=>onTap(),
        child: Card(
            elevation: 6,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    // 'https://i.pinimg.com/originals/42/12/19/42121987e913a73ee9e656ce4060a77f.jpg',
                    'assets/icon_all.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Technology",
                        style: kTextBlack,
                      ),
                    ),
                  ],
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
