import 'package:flutter/material.dart';

Color mPrimaryColor = const Color(0xFF811B83);
Color mTitleTextColor = const Color(0xFF100E34);
Color mBodyTextColor = const Color(0xFF100E34).withOpacity(0.5);
Color mBackgroundColor = const Color(0xFFF5F6F6);
Color mSecondaryColor = const Color(0xFFFA5019);

class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);
}

final categoryList = ['Top Recommended', 'Near you', 'Agency Recommended'];
final recommendedList = [
  House(
      'The Moon House', 'P455, Chhatak, Sylhet', 'assets/images/house01.jpeg'),
  House('The Moon House', 'P455, Chhatak, Sylhet', 'assets/images/house02.jpeg')
];

final BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.3),
  spreadRadius: 1,
  blurRadius: 7,
  offset: const Offset(0, 3),
);

/*****************----book---*******************************/
class Course {
  String imageUrl;
  String title;
  int current;
  int total;
  bool isVideo;

  Course({
    this.imageUrl = '',
    this.title = '',
    this.current = 0,
    this.total = 0,
    this.isVideo = false,
  });
}

class ListeningBook {
  String imageUrl;
  String title;
  String author;
  double price;
  double newPrice;
  double rating;

  String recommendation;
  String audioIntro;
  String bookIntro;
  bool isVedio;
  String time;

  ListeningBook(
      {this.imageUrl = '',
      this.title = '',
      this.author = '',
      this.price = 0.0,
      this.newPrice = 0.0,
      this.rating = 0.0,
      this.recommendation = '',
      this.audioIntro = '',
      this.bookIntro = '',
      this.isVedio = false,
      this.time = ''});
}

Color mBackgroundColor2 = Color(0xFFF8F8F8);
Color mAccentColor2 = Color(0xFFFF6B03);
Color mTitleTextColor2 = Color(0xFF333333);
Color mBodyTextColor2 = Color(0xFF666666);
Color mSubTextColor2 = Color(0xFF999999);

const bannerList = ['assets/images/banner01.png', 'assets/images/banner02.png'];

List featuredList = [
  ListeningBook(
    imageUrl: 'assets/images/listening_book1.png',
    title: 'The Forgotten Hours',
    author: 'Sarah Perez',
    price: 0.0,
    newPrice: 4.99,
    rating: 4.5,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book2.png',
    title: 'Whiskey in a acup',
    author: 'Frank Lee',
    price: 12.99,
    newPrice: 2.99,
    rating: 5.0,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book3.png',
    title: 'SHE: kate spade new york',
    author: 'Simon',
    price: 0.0,
    newPrice: 0.0,
    rating: 5.0,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book4.png',
    title: 'The Killer Collective',
    author: 'Sarah Perez',
    price: 12.99,
    newPrice: 2.99,
    rating: 4.0,
  ),
];

List latestedList = [
  ListeningBook(
    imageUrl: 'assets/images/latested1.png',
    title: 'Blood for Blood',
    newPrice: 0.0,
    time: '12:22:44',
    bookIntro:
        'Rush hour, London. A packed commuter train is torn apart in a collision. Picking through the carnage, ex-special forces profiler Ziba MacKenzie helps a dying woman who passes on a cryptic message: He did it. You have to tell someone.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested2.png',
    title: 'The Killer Collective',
    newPrice: 2.99,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested3.png',
    title: 'Planner Weekly And Monthly',
    newPrice: 0.0,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested4.png',
    title: 'Anne Brigman',
    newPrice: 2.99,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested5.png',
    title: 'The Vocabulary of Style',
    newPrice: 0.0,
    time: '12:22:44',
    isVedio: true,
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
];

List courseList = [
  Course(
    imageUrl: 'assets/images/course1.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 24,
  ),
  Course(
    imageUrl: 'assets/images/course2.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 30,
  ),
  Course(
    imageUrl: 'assets/images/course3.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 28,
    isVideo: true,
  ),
];

/*****************----signup---*******************************/

Color mPrimaryColor3 = Color(0xFFFF7660);

Color mPrimaryTextColor3 = Color(0xFF303030);

Color mBackgroundColor3 = Color(0xFFFFFFFF);

Color mButtonEmailColor3 = Color(0xFFFF7660);

Color mButtonFacebookColor3 = Color(0xFF3A5998);

Color mButtonAppleColor3 = Color(0xFF000000);

Color mBorderColor3 = Color(0xFFE8E8E8);

/*****************--game_shop--***************************************/

Color mBackgroundColor4 = Color(0xFFFFFFFF);

Color mBarBackgroundColor4 = Color(0xFFF1F3F5);

Color mCardBackgroundColor4 = Color(0XFFF8F9FA);

Color mSelectCardBackgroundColor4 = Color(0xFF6741D9);

Color mPrimaryTextColor4 = Color(0xFF495057);

Color mSecondTextColor4 = Color(0xFF495057);

Color mSecondaryColor4 = Color(0xFFF76707);

class Product {
  String name, imageUrl;
  double rating, price;

  Product(this.name, this.price, this.imageUrl, this.rating);
}

List<Product> productList = [
  Product(
      'Dualshock 4\nRed Camouflage', 60, 'assets/images/product_1.png', 4.0),
  Product('Dualshock 4\nMidnight Blue', 55, 'assets/images/product_2.png', 4.0),
  Product('Dualshock 4\nGlacier White', 50, 'assets/images/product_3.png', 4.0),
];

/*******************--travel--******************************/

class Place {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);
}

Color mBackgroundColor5 = Color(0xFFFEFEFE);

Color mPrimaryColor5 = Color(0xFFf36f7c);

Color mSecondaryColor5 = Color(0xFFfff2f3);

const categoryList5 = [
  'New',
  'Popular',
  'Most viewed',
  'All places',
];

List<Place> placeList5 = [
  Place("Rain Forest", "Costa Rica", "assets/images/bg1.png", 240),
  Place("Lake Louise", "Canada", "assets/images/bg2.png", 200),
  Place("Plitivice Lakes", "Canada", "assets/images/bg4.png", 120),
  Place("Dubai", "UAE", "assets/images/bg3.png", 200),
  Place("Rain Forest", "Canada", "assets/images/bg6.png", 240),
  Place("Plitivice Lakes", "Costa Rica", "assets/images/bg5.png", 150),
];

/**********************--shopping--*******************************/
class Shopping {
  Shopping(this.imageUrl, this.background, this.title, this.price);

  String imageUrl;
  Color background;
  String title;
  String price;
}

Color mPrimaryColor6 = Color(0xFF3D82AE);
Color mPrimaryTextColor6 = Colors.black;
Color mScroudTextColor6 = Colors.black45;
Color mSizeYellowColor6 = Color(0xFFF8C078);
Color mSizeGreyColor6 = Color(0xFFA29B9B);
Color mRedColor6 = Color(0xFFFF6464);

List<String> productTitles6 = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];

List<Shopping> productList6 = [
  Shopping(
      'assets/images/package01.png', Color(0xFF3D82AE), 'Office Code', '\$234'),
  Shopping(
      'assets/images/package02.png', Color(0xFFD3A984), 'Belt Bag', '\$234'),
  Shopping(
      'assets/images/package03.png', Color(0xFF989493), 'Hang Top', '\$234'),
  Shopping(
      'assets/images/package04.png', Color(0xFFE6B398), 'Old Fashion', '\$234'),
  Shopping(
      'assets/images/package05.png', Color(0xFFFB7883), 'Carry bag', '\$234'),
  Shopping('assets/images/package06.png', Color(0xFFAEAEAE), 'Business Bag',
      '\$234'),
];
/*****************************----************************************/