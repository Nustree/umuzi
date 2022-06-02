import 'package:flutter/material.dart';

/// Border used to decorate medium-sized containers.
Border mediumContainerBorder(Color color) {
  return Border.all(width: 2.0, color: color);
}

/// Border used to decorate small-sized containers.
Border smallContainerBorder(Color color) {
  return Border.all(width: 1.0, color: color);
}

/// Common radius for medium-sized containers.
Radius mediumContainerRadius() {
  return const Radius.circular(15);
}

/// Common radius for small-sized containers.
Radius smallContainerRadius() {
  return const Radius.circular(5);
}