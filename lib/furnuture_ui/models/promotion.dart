class PromotionModel{
  
  final String bgImgPath;
  final String? imgPath;
  final String title;
  final String subtitle;
  final String? tag;
  final String? caption;

  PromotionModel(
    {
    required this.bgImgPath,
     this.imgPath,
    required this.title,
    required this.subtitle,
     this.tag,
     this.caption,
    }
  );


}