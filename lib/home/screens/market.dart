import 'package:flutter/material.dart';
import 'package:soko_beauty/models/shop/shop.dart';
import 'package:soko_beauty/shop/widgets/common/Items_sliver_list.dart';
import 'package:soko_beauty/shop/widgets/common/shops_appbar.dart';
import 'package:soko_beauty/models/data/shop/shop.dart';

class MarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Shop> shops = getShops();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ShopsAppbar(),
          ItemsSliverList(
            shops: shops,
            cardType: 'for_you',
            title: 'For you',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'luxurious',
            title: 'Luxury',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'favorite',
            title: 'Favorite shops',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'popular',
            title: 'Popular',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'trending',
            title: 'Trending',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'new',
            title: '',
          ),
          ItemsSliverList(
            shops: shops,
            cardType: 'recent',
            title: '',
          ),
        ],
      ),
    );
  }
}
