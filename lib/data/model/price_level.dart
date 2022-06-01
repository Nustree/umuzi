enum PriceLevel {
  free,
  inexpensive,
  moderate,
  expensive,
  veryExpensive
}

extension PriceLevelExtension on PriceLevel {
  PriceLevel fromLevel(int level) {
    switch (level) {
      case 0:
        return PriceLevel.free;
      case 1:
        return PriceLevel.inexpensive;
      case 2:
        return PriceLevel.moderate;
      case 3:
        return PriceLevel.expensive;
      case 4:
        return PriceLevel.veryExpensive;
      default:
        return PriceLevel.free;
    }
  }
}
