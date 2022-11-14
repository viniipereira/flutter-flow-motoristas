import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int scrollarTela(int registros) {
  double segundos = 0;
  if (registros >= 100) {
    segundos = (registros / 100) * 200000;
  } else {
    segundos = (registros % 100) * 2000;
  }
  print(segundos);
  return segundos.toInt();
}
