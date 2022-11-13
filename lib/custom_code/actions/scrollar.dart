// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:cloud_firestore/cloud_firestore.dart';

double scrollar(int registros) {
  double segundos = 0;
  if (registros >= 100) {
    segundos = (registros / 100) * 200000;
  } else {
    segundos = (registros % 100) * 2000;
  }
  print(segundos);
  return segundos;
}
