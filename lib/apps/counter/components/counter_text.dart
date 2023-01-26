import 'package:flutter/material.dart';

Widget counterText({
  required int count,
}) {
  return Container(
    alignment: Alignment.center,
    child: Text(count.toString()),
  );
}
