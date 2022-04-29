import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:ui_learn/furnuture_ui/screens/category/widgets/header/header.dart';

class HeaderSliver implements SliverPersistentHeaderDelegate{
  final double  minExtent;
  final double  maxExtent;

  HeaderSliver({
    required this.minExtent,
    required this.maxExtent
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Header();
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
   return true;
  }

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration => null;

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  // TODO: implement vsync
  TickerProvider? get vsync => null;



  

}