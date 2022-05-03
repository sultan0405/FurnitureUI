import 'package:flutter/cupertino.dart';

import '../custom_drop_down.dart';
import '../models/category_list_item.dart';
import '../models/ct_child_item_brand.dart';
import '../models/drop_ct_list_item.dart';
import '../widgets/child_def_category_list_item.dart';
import '../widgets/child_dropD_category_list_item.dart';
import '../widgets/def_category_list_item.dart';
import '../widgets/dropD_ctegory_list_item.dart';

class DataBase{
  static  List<CategoryListItemModel> items = [
  CategoryListItemModel(
    isDropDown: true, 
    dropDWidget: const DropDCategoryListItem(bgPath: 'ct_bg.jpg', imgPath: 'trend.png', subtitle: 'New Styles Getting Added Daily', title: 'SPRING\nSUMMER 2022',) , 
    defWidget:  const SizedBox.shrink()
    ),
  CategoryListItemModel(
    isDropDown: false, 
    dropDWidget: const SizedBox.shrink() , 
    defWidget: const DefCategoryListItem(bgPath: 'pink.jpg', imgPath: 'child.png', subtitle: 'Brands, Clothing, Footwear, Ac...', title: 'KIDS',) 
    ),
 ];

 static List<DropDCategoryListItemModel> childItems = [
    DropDCategoryListItemModel(
      isDropDown: true,
      defWidget: const SizedBox.shrink(),
      dropDWidget: const DrdCategoryChildListItem(title: 'Top Brands',)
       ),
    DropDCategoryListItemModel(
      isDropDown: true,
      defWidget: const SizedBox.shrink(),
      dropDWidget: const DrdCategoryChildListItem(title: 'Men',)
       ),
    DropDCategoryListItemModel(
      isDropDown: false,
      defWidget: const DefCategoryChildListItem(title: 'Kids',),
      dropDWidget: const SizedBox.shrink(),
    ),
    DropDCategoryListItemModel(
      isDropDown: true,
      defWidget: const SizedBox.shrink(),
      dropDWidget: const DrdCategoryChildListItem(title: 'Footwear',)
       ),
    DropDCategoryListItemModel(
      isDropDown: false,
      defWidget: const DefCategoryChildListItem(title: 'Jewellery',),
      dropDWidget:const SizedBox.shrink()
    )
  ];


  static List<CategoryChildItemBrandModel> brands = [
    CategoryChildItemBrandModel(title: 'H&M'),
    CategoryChildItemBrandModel(title: 'Puma'),
    CategoryChildItemBrandModel(title: 'Nike'),
    CategoryChildItemBrandModel(title: 'Flutter'),
  ];

}