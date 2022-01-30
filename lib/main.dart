import 'package:flutter/material.dart';
import 'home.dart';
import 'beers.dart';
import 'liquor.dart';
import 'alcohols.dart';
import 'productView.dart';
import 'animationView.dart';
import 'allProductList.dart';
import 'editProduct.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/home/beers': (context) => Beers(),
    '/home/liquors': (context) => Liquors(),
    '/home/alcohols': (context) => Alcohols(),
    '/view/product': (context) => ProductView(),
    '/animation': (context) => AnimationView(),
    '/all': (context) => AllProductList(),
    '/all/modify': (context) => ModifyProduct(),
  },
  )
);