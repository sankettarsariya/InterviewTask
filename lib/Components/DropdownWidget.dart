import 'package:flutter/material.dart';

import '../Utils/Constant.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
            color: Colors.white70, style: BorderStyle.solid, width: 0.90),
      ),
      child: SizedBox(
        width: 90.0,
        height: 40,
        child: Center(
          child: DropdownButtonFormField<int>(
            decoration: const InputDecoration.collapsed(hintText: ''),
            icon: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.white,
              size: 30.09,
            ),
            value: 2,
            onChanged: (value) {},
            items: const <DropdownMenuItem<int>>[
              DropdownMenuItem<int>(
                value: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Equity",style: kTextWhite,),
                ),
              ),
              DropdownMenuItem<int>(
                value: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Share",style: kTextWhite,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
