class Items {
  final String img;
  final String title;
  final String subTitle;

  ///
  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "assets/images/splashscreen.png",
    title: "Keep It Clean\nKeep It Green", 
    subTitle:
        "Greening the world,\none trash bin at a time",
  ),
  Items(
    img: "assets/images/logo2.png",
    title: "Elevate Cleanliness\nEmbrace Green",
    subTitle:
        "Explore 25,000+ smart bin options. Choose\nthe future of efficient waste management",
  ),
  Items(
    img: "assets/images/logo4.png",
    title: "Waste Smart\nLive Green",
    subTitle: "Bin Smart, Live Green\nTransforming Waste, Nurturing the Planet",
  ),
];