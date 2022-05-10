import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertask/Screens/BidDetailScreen.dart';
import 'package:octo_image/octo_image.dart';
import 'package:progress_indicators/progress_indicators.dart';

import '../Utils/Constant.dart';

class BidBuyShare extends StatefulWidget {
  const BidBuyShare({Key? key}) : super(key: key);

  @override
  _BidBuyShareState createState() => _BidBuyShareState();
}

class _BidBuyShareState extends State<BidBuyShare>
    with TickerProviderStateMixin {

  TabController? _tabController;
  List dataShare = [];
  Response? response;
  Dio dio = Dio();
  var jsonData;


  @override
  void initState() {
    GetData();
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  //region For Api Calling of Buy Shares Screen
  void GetData() async {
    try {
      response = await dio.post(
        BASE_URL,
      );

      if (response!.statusCode == 200) {
        setState(() {
          jsonData = jsonDecode(response.toString());
        });

        print('jsonData');
        print(jsonData);
        if (jsonData['status'] == 1) {
          // setState(() {
          //   dataShare=jsonData[0];
          //   print(dataShare);
          // });
        }
        if (jsonData['status'] == 0) {
          // Toasty.showtoast(jsonData['message']);
        }
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  //endregion

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
        title: Text('Bid & Buy Shares', style: kTextHeader),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  border: Border.all(
                      color: Colors.white70,
                      style: BorderStyle.solid,
                      width: 0.10),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: kPrimaryColor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: kColorSelectedTab,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_home.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bid Shares',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_home.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Buy Shares',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    jsonData != null
                        ? ListView.builder(
                            itemCount: jsonData.length,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, int index) {
                              return BidBuy(
                                BidStatus: jsonData[index]['bidStatus'] ?? '',
                                cName: jsonData[index]['companyName'] ?? '',
                                OfferPrice: jsonData[index]['offerPrice'] ?? '',
                                SharesOffer:
                                    jsonData[index]['shareOffer'] ?? '',
                                ShareClass: jsonData[index]['shareClass'] ?? '',
                                Company: jsonData[index]['companyName'] ?? '',
                                Image: jsonData[index]['companyLogo'] ?? '',
                                onPress: () {
                                  //region For Onclick to Go to Detail Screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BidDEtailScreen(
                                        CName: jsonData[index]['companyName'] ??
                                            '',
                                        shareClass:
                                            jsonData[index]['shareClass'] ?? '',
                                        quantityShares: jsonData[index]
                                                ['quantityShares'] ??
                                            0,
                                        bidMaximumRice: jsonData[index]
                                                ['bidMaximumRice'] ??
                                            '',
                                        offerPrice:
                                            jsonData[index]['offerPrice'] ?? '',
                                        shareOffer:
                                            jsonData[index]['shareOffer'] ?? '',
                                        bidPrice:
                                            jsonData[index]['bidPrice'] ?? '',
                                        limitBid:
                                            jsonData[index]['limitBid'] ?? '',
                                        totalPurcasePrice: jsonData[index]
                                                ['totalPurcasePrice'] ??
                                            '',
                                        bursaFees:
                                            jsonData[index]['bursaFees'] ?? '',
                                        netToSeller: jsonData[index]
                                                ['netToSeller'] ??
                                            '',
                                        bidStatus:
                                            jsonData[index]['bidStatus'] ?? '',
                                      ),
                                    ),
                                  );
                                  //endregion
                                },
                              );
                            })
                        : Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                                child: JumpingText(
                              'Loading...',
                              style: kTextHeader,
                            )),
                          ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'No Buy Shares',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//region For Widget Of Bid
class BidBuy extends StatelessWidget {
  final String cName;
  final String Company;
  final String ShareClass;
  final String BidStatus;
  final String OfferPrice;
  final String SharesOffer;
  final Function onPress;
  final String Image;

  const BidBuy(
      {Key? key,
      required this.cName,
      required this.Company,
      required this.ShareClass,
      required this.BidStatus,
      required this.OfferPrice,
      required this.SharesOffer,
      required this.onPress,
      required this.Image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () => onPress(),
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        OctoImage.fromSet(
                          height: 44,
                          width: 44,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://cpng.pikpng.com/pngl/s/235-2356821_amazon-com-paragon-tap-and-table-logo-clipart.png',
                          ),
                          octoSet: OctoSet.circleAvatar(
                            backgroundColor: Colors.black87,
                            text: Text("S"),
                          ),
                        )
                        /* SvgPicture.network(
                          Image,
                          semanticsLabel: 'A shark?!',
                          height: 45,
                          width: 45,
                          color: Colors.black,
                          placeholderBuilder: (BuildContext context) =>
                              Container(
                                height: 45,
                                  width: 45,
                                  padding: const EdgeInsets.all(30.0),
                                  child: const CircularProgressIndicator(),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                        )*/
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Company:', style: kTextHeaderSmall),
                            Text(
                              cName,
                              style: kTextGreyDescription1,
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
                            Text('Share Class :', style: kTextHeaderSmall),
                            Text(ShareClass, style: kTextGreyDescription1),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bid Status:', style: kTextHeaderSmall),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                color: kColorYellow,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                    child: Text(
                                  BidStatus,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            alignment: Alignment.bottomRight,
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
                                BidStatus,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Offer Price:', style: kTextHeaderSmall),
                            Text(OfferPrice,
                                maxLines: 2, style: kTextGreyDescription1),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shares Offer :',
                              style: kTextHeaderSmall,
                            ),
                            Text(
                              SharesOffer,
                              style: kTextGreyDescription1,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//endregion
