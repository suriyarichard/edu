class Product {
  final String imagePath;
  final String title;
  final String lessons;
  // final String reviewCount;
  final String tag;
  final String icons;
  Product(this.imagePath, this.title, this.lessons, this.tag, this.icons);
}

List<Product> productList = [
  Product(
    'assets/images/pic1.png',
    'A complete guide for your new born baby',
    '16 lessons',
    'LIFESTYLE',
    '',
  ),
  Product('assets/images/pic3.png', 'Understanding of human behaviour',
      '10 lessons', 'BABYCARE', ''),
  Product('assets/images/pic2.png', 'Understanding of human behaviour',
      '12 lesson', 'Working Parents', ''),
];

List<Product> productList2 = [
  Product('assets/images/pic2.png', 'Understanding of human behaviour',
      '12 lesson', 'Working Parents', 'Book'),
  Product('assets/images/pic3.png', 'Understanding of human behaviour',
      '13 Feb Sunday', 'BABYCARE', 'Book'),
  Product('assets/images/pic1.png', 'A complete guide for your new born baby',
      '16 lessons', 'LIFESTYLE', 'Book'),
];
