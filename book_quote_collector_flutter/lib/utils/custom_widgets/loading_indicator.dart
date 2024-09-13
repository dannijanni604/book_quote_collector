import 'package:book_quote_collector_flutter/config/constants.dart';
import 'package:flutter/material.dart';

Widget loadingIndicator() {
  return SizedBox(
    height: 25,
    width: 25,
    child: CircularProgressIndicator(color: kPrimaryColor,strokeWidth: 1,),
  );
}
