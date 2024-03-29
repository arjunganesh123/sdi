import 'package:flutter/material.dart';


const klogindetails=InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
  contentPadding: EdgeInsets.only(top: 20),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white,width: 1),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color:Colors.blue,width: 3),
  ),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green,width: 2),
  ),
);

const kuserdetails=InputDecoration(
  isDense: true,
  contentPadding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Color(0x4DFFFFFF),
  hintText: '',
  hintStyle: TextStyle(color: Colors.black38,fontSize: 13),
);