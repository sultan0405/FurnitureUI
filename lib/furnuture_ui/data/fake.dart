import 'package:ui_learn/furnuture_ui/models/catogry.dart';
import 'package:ui_learn/furnuture_ui/models/item.dart';
import 'package:ui_learn/furnuture_ui/models/promotion.dart';

class Fake{
 static int numberOfItemsInCart = 12;

 static List<CategoryModel> categories = [
   CategoryModel('living_room.png', 'Living Room'),
   CategoryModel('bath_room.png', 'Bath Room'),
   CategoryModel('living_room.png', 'Living Room'),
   CategoryModel('basket.png', 'Workspace'),
   CategoryModel('living_room.png', 'Living Room'),
 ];

 static List<PromotionModel> promotions = [
   PromotionModel(
     bgImgPath: 'bg.jpg', 
     imgPath: 'fur.png', 
     title: 'All items Furniture\nDiscount Up to', 
     subtitle: '50%', 
     tag: '30 April 2019', 
    //  caption: capti, 
     ),
     
   PromotionModel(
     bgImgPath: 'bg.jpg', 
     title: 'Get voucher gift', 
     subtitle: '\$50.00', 
     caption: '*for new member\'s\nof Furniture Shop', 
   ),

 ];


 static List<String> trends = [
   'trend.jpg',
   'featured.webp',
   'trend.jpg',
 ];
static List<String> featurs = [
   'featured.webp',
   'trend.jpg',
   'featured.webp',
 ];

 static  List<Item> furniture = [
    Item(
      name: "Chair Daecy li - Green", 
      imagePAth:'green_chair.png' , 
      originalPrice: 140,
      rating: 4.4,
      discountPercent: 10
      ),
    Item(
      name: 'Bobson Table - White', 
      imagePAth: 'white_chair.png', 
      originalPrice: 160, 
      rating: 4.2
      ),
    Item(
      name: 'Bobson Table - White', 
      imagePAth: 'white_chair.png', 
      originalPrice: 160, 
      rating: 4.2
      ),
    Item(
      discountPercent: 10,
      name: 'Elly Sofa PAtchwork', 
      imagePAth: 'white_chair.png',
      originalPrice: 95,
      rating: 4.0
      ),
    Item(
      discountPercent: 10,
      name: 'Elly Sofa PAtchwork', 
      imagePAth: 'white_chair.png',
      originalPrice: 95,
      rating: 4.0
      ),
  ];

}