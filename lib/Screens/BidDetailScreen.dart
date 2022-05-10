import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../Components/Round_MaterialButton.dart';
import '../Utils/Constant.dart';
import '../Utils/DialogReview.dart';
import 'RequestForm.dart';

class BidDEtailScreen extends StatefulWidget {
  final String CName;
  final String shareClass;
  final int quantityShares;
  final String bidMaximumRice;
  final String offerPrice;
  final String shareOffer;
  final String bidPrice;
  final String limitBid;
  final String totalPurcasePrice;
  final String bursaFees;
  final String netToSeller;
  final String bidStatus;

  const BidDEtailScreen(
      {Key? key,
      required this.CName,
      required this.shareClass,
      required this.quantityShares,
      required this.bidMaximumRice,
      required this.offerPrice,
      required this.shareOffer,
      required this.bidPrice,
      required this.limitBid,
      required this.totalPurcasePrice,
      required this.bursaFees,
      required this.netToSeller,
      required this.bidStatus})
      : super(key: key);

  @override
  _BidDEtailScreenState createState() => _BidDEtailScreenState();
}

class _BidDEtailScreenState extends State<BidDEtailScreen> {
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
        title: Text('Bid Share', style: kTextHeader),
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 370,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        /*Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),*/
                        OctoImage.fromSet(
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://cpng.pikpng.com/pngl/s/235-2356821_amazon-com-paragon-tap-and-table-logo-clipart.png',
                          ),
                          octoSet: OctoSet.circleAvatar(
                            backgroundColor: Colors.black87,
                            text: Text("S"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.CName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              decoration: BoxDecoration(
                                color: kColorDark,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                    child: Text(
                                  widget.bidStatus,
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              decoration: BoxDecoration(
                                color: kColorDark,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                    child: Text(
                                  widget.bidStatus,
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Company:', style: kTextHeaderSmall),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.CName,
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Share Class:', style: kTextHeaderSmall),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.shareClass,
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Quantity Shares',
                                    style: kTextHeaderSmall),
                                Text(widget.quantityShares.toString(),
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Bid Maximum rice',
                                    style: kTextHeaderSmall),
                                Text(widget.bidMaximumRice,
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
                                Text(widget.offerPrice,
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Share Offered:', style: kTextHeaderSmall),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.shareOffer,
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Bid Price:', style: kTextHeaderSmall),
                                Text(widget.bidPrice,
                                    maxLines: 2, style: kTextGreyDescription1),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Limit Bid:', style: kTextHeaderSmall),
                                Text(widget.limitBid,
                                    maxLines: 2, style: kTextGreyDescription1),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 330,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'This is the amount due \n payment to Seller',
                                      maxLines: 2,
                                      style: kTextGreyDescription1),
                                  Text(widget.totalPurcasePrice + " USD",
                                      style: kTextHeaderSmall),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Transaction Fees set at 1%',
                                      maxLines: 2,
                                      style: kTextGreyDescription1),
                                  Text(widget.bursaFees + " USD",
                                      style: kTextHeaderSmall),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Transaction Fees set at 1%',
                                      maxLines: 2,
                                      style: kTextGreyDescription1),
                                  Text(widget.netToSeller + " USD",
                                      style: kTextHeaderSmall),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: RoundMaterialButton(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: kColorDark,
                              circular: 10.0,
                              onPress: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                //Navigator.pop(context);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestForm()));
                              },
                              textStyle: kTextButton1,
                              buttonText: 'Back to Home',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

