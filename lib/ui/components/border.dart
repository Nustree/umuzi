import 'package:flutter/material.dart';

/// Border used to decorate medium-sized containers.
Border mediumContainerBorder(Color color) {
  return Border.all(width: 1.5, color: color);
}

/// Border used to decorate small-sized containers.
Border smallContainerBorder(Color color) {
  return Border.all(width: 1.0, color: color);
}

/// Common radius for medium-sized containers.
const mediumContainerRadius = Radius.circular(10);

/// Common radius for small-sized containers.
const smallContainerRadius = Radius.circular(5);