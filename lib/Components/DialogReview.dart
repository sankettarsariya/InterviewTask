import 'dart:convert';
import 'package:flutter/material.dart';
import '../Utils/Constant.dart';
import 'Round_MaterialButton.dart';
import 'SwitchScreen.dart';

class DialogReview extends StatefulWidget {
  DialogReview();

  @override
  _DialogReviewState createState() => _DialogReviewState();
}

class _DialogReviewState extends State<DialogReview> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 460,
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Material(
                    child: Text(
                        'One last step before submitting \n your request',
                        style: kTextThanks)),
                SizedBox(
                  height: 20,
                ),
                Material(
                    child: Text(
                        'Please ensure reading the bidding/purchase terms and conditions before submitting your request. You can access the full terms and conditions on www.wearebursa.com/termsandconditions',
                        style: kTextGreyDescription2)),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25,left: 25,top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(child: Text('Consent', style: kTextThanks)),
                          Material(child: SwitchScreen())
                        ],
                      ),
                      SizedBox(height: 15,),
                      Material(
                          child: Text(
                              'You Agree and abide by Bursa \nTerms and Condition ',
                              style: kTextGreyDescription2)),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: RoundMaterialButton(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: kColorDark,
                    circular: 10.0,
                    onPress: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode());
                      Navigator.pop(context);
                    },
                    textStyle: kTextButton1,
                    buttonText: 'Submit',
                  ),
                ),

                SizedBox(height: 20,),

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Material(
                        child: Text(
                            'Back to Review',
                            style: kTextGotoReview)),
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(bottom: 30, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
