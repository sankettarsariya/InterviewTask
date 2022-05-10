import 'package:flutter/material.dart';

import '../Components/DialogReview.dart';
import '../Components/Round_MaterialButton.dart';
import '../Components/Slider.dart';
import '../Utils/Constant.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  double _value = 20;

  List sizeList = ['Bank Transfer', 'UPI Transfer'];
  List<DropdownMenuItem<String>> dropdownItem = [];
  var selectSize;
  bool isChecked = true;

  @override
  void initState() {
    var newiteam;
    for (int i = 0; i < sizeList.length; i++) {
      String category = sizeList[i];
      newiteam = DropdownMenuItem<String>(
          value: sizeList[i],
          child: Container(
            child: Text(
              category,
              style: kTextHeaderSmall,
            ),
          ));
      dropdownItem.add(newiteam);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                'assets/errow.png',
                height: 20,
                width: 20,
              )),
        ),
        title: Text('Review Details', style: kTextHeader),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kColorDark, kPrimaryColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.3, 0.9],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('25% Complete',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                    textAlign: TextAlign.left),
              ),
              SliderProgress(),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10,
                  top: 10,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Please confirm your offring details.',
                          style: kTextHeaderMedium),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Company:', style: kTextHeaderSmall),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Amazon Inc',
                                  maxLines: 2, style: kTextGreyDescription1),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Share Class:', style: kTextHeaderSmall),
                              SizedBox(
                                width: 10,
                              ),
                              Text('A+',
                                  maxLines: 2, style: kTextGreyDescription1),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Offer Price:', style: kTextHeaderSmall),
                              SizedBox(
                                width: 10,
                              ),
                              Text('\$220.00',
                                  maxLines: 2, style: kTextGreyDescription1),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Share Offered:', style: kTextHeaderSmall),
                              SizedBox(
                                width: 10,
                              ),
                              Text('50000',
                                  maxLines: 2, style: kTextGreyDescription1),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Transaction Summery', style: kTextThanks),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Purchase Price',
                                style: kTextHeaderSmall),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'This is the amount due for \n payment to Seller',
                                    maxLines: 2,
                                    style: kTextGreyDescription1),
                                Text("22,000 USD", style: kTextHeaderSmall),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bursa Fees', style: kTextHeaderSmall),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Transaction Fees set at 1%',
                                    maxLines: 2, style: kTextGreyDescription1),
                                Text("220.0 USD", style: kTextHeaderSmall),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Net To Seller', style: kTextHeaderSmall),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Transaction Fees set at 1%',
                                    maxLines: 2, style: kTextGreyDescription1),
                                Text("21,778 USD", style: kTextHeaderSmall),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Select Payment Method', style: kTextHeaderSmall),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            style: kTextHeaderSmall,
                            value: selectSize,
                            elevation: 2,
                            icon: Image.asset(
                              'assets/down_arrow.png',
                              height: 15,
                              width: 15,
                            ),
                            iconSize: 42,
                            hint: Text(
                              'Payment Method',
                              style: kTextHeaderSmall,
                            ),
                            underline: SizedBox(),
                            onChanged: (var newValue) {
                              setState(() {
                                selectSize = newValue;
                              });
                            },
                            items: dropdownItem,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Third Party Declaration',
                            style: kTextHeaderSmall),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0))),
                                value: isChecked,
                                checkColor: Colors.white,  // color of tick Mark
                                activeColor: kColorDark,
                                onChanged: (v) {
                                  setState(() {
                                    isChecked = v!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                child: Text(
                                    'Check the box if the name on the credit/debit card is form your name ',
                                    style: kTextGreyDescription1)),

                          ],
                        ),

                        SizedBox(height: 10,),

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
                              showDialog();
                            },
                            textStyle: kTextButton1,
                            buttonText: 'Submit',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.6),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return _SystemPadding(
          child: DialogReview(
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

}


class _SystemPadding extends StatelessWidget {
  final Widget child;

  _SystemPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return new AnimatedContainer(
        padding: mediaQuery.padding,
        duration: const Duration(milliseconds: 300),
        child: child);
  }
}
