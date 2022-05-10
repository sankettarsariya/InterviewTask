import 'package:flutter/material.dart';
import 'package:fluttertask/Screens/ReviewScreen.dart';

import '../Components/Round_MaterialButton.dart';
import '../Components/Slider.dart';
import '../Utils/Constant.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  double _value = 20;

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
        title: Text('Request Form', style: kTextHeader),
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

              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('25% Complete',
                    style: TextStyle(fontSize: 17,color: Colors.white),
                    textAlign: TextAlign.left),
              ),

              SliderProgress(),

              Padding(
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 5),
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
                              Text('Amazon',
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
                              Text('\$200.00',
                                  maxLines: 2, style: kTextGreyDescription1),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Share Offered:', style: kTextHeaderSmall),
                              SizedBox(
                                width: 10,
                              ),
                              Text('40000',
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
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Tile(
                              title: 'Quality',
                              Qa: 'How many shares would you like to buy?',
                              price: '2000',
                              shareType: 'Shares'),
                          Tile(
                              title: 'Bid Price',
                              Qa: 'How much are you willing to buy the share for?(bid price should be above or equal to the offer price)',
                              price: "\$11.10",
                              shareType: 'Per Share'),
                          Tile(
                              title: 'Bid Price',
                              Qa: 'This is the maximum price you will buy the share for.',
                              price: '\$12.5',
                              shareType: 'Per Share'),
                          Tile(
                              title: 'Limit bid',
                              Qa: 'When does your offer end ?',
                              price: '24',
                              shareType: 'Hours'),

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
                                //Navigator.pop(context);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewScreen()));
                              },
                              textStyle: kTextButton1,
                              buttonText: 'Submit',
                            ),
                          ),

                          SizedBox(height: 10,),

                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final title;
  final Qa;
  final price;
  final shareType;

  const Tile({
    Key? key,
    this.title,
    this.Qa,
    this.price,
    this.shareType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: kTextHeaderSmall,
          ),
          Text(
            '$Qa',
            style: kTextGreyDescription1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$price',
                style: kTextHeaderSmall,
              ),
              Text(
                '$shareType',
                style: kTextGreyDescription1,
              ),
            ],
          ),
          Divider(thickness: 1),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
