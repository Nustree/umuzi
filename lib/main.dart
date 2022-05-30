import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umuzi/app.dart';

import 'amadeus.dart';

void main() {
  Amadeus amadeus = Amadeus();
  amadeus.getHotelOffers();
}