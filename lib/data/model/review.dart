class Review {
  final String author;
  final String relativeTime;
  final String? profilePhotoUrl;
  final String? text;

  Review(
      {required this.author,
      required this.relativeTime,
      required this.profilePhotoUrl,
      required this.text});
}
