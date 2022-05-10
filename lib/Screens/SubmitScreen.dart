import 'package:flutter/material.dart';

import '../Utils/Constant.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({Key? key}) : super(key: key);

  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.asset(
                            'assets/errow.png',
                            height: 20,
                            width: 20,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 60,
                ),
              ]),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/true.png',
                          height: 100,
                          width: 100,
                        ),
                        Text('Thank you for submitting your \n offer request.',
                            style: kTextThanks, textAlign: TextAlign.center),
                        Text(
                            'Your request EOR-0001 will be reviewed by \n our buy-side team and arrange to contact \n you within 48 hours.',
                            style: kTextGreyDescription,
                            textAlign: TextAlign.center),
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Color(0xffe9f6f4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('Return to Home',
                                  style: kTextButton,
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ]),
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
