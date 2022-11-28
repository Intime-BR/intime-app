import 'package:flutter/material.dart';

Color manageStatusColor(String status) {
  switch (status) {
    case "Presente":
      return const Color(0xff4a9231);
    case "Pendente":
      return const Color(0xfffadc41);
    case "Ausente":
      return const Color(0xffff0000);
    default:
      return const Color(0xff000000);
  }
}
