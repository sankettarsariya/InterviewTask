import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask/Utils/Constant.dart';

class DialogReview extends StatefulWidget {
  DialogReview();

  @override
  _DialogReviewState createState() => _DialogReviewState();
}

class _DialogReviewState extends State<DialogReview> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Container(
            height: 410,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox.expand(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                 SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kColorDark
                      ),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: kTextButton1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
