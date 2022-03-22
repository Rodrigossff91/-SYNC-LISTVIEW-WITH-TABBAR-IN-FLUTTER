import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../rappi_model/rappi_model.dart';

const categoryHeight = 55.0;
const productHeight = 110.0;

class RappiBloc with ChangeNotifier {
  List<RappiTabCategory> tabs = List<RappiTabCategory>.empty(growable: true);
  List<RappiItem> items = List<RappiItem>.empty(growable: true);
  late TabController tabController;
  ScrollController scrollController = ScrollController();
  bool _listen = true;

  void init(TickerProvider ticker) {
    tabController =
        TabController(length: rappiCategories.length, vsync: ticker);
    var offsetFrom = 0.0;
    double offsetTo = 0.0;
    for (var i = 0; i < rappiCategories.length; i++) {
      final category = rappiCategories[i];

      if (i > 0) {
        offsetFrom += rappiCategories[i - 1].products.length * productHeight;
      }
      if (i < rappiCategories.length - 1) {
        offsetTo =
            offsetFrom + rappiCategories[i + 1].products.length * productHeight;
      } else {
        offsetTo = double.infinity;
      }

      tabs.add(
        RappiTabCategory(
          offSetTo: offsetTo,
          offSetFrom: categoryHeight * i + offsetFrom,
          category: category,
          selected: (i == 0),
        ),
      );
      items.add(RappiItem(category: category));
      for (var j = 0; j < category.products.length; j++) {
        final product = category.products[j];
        items.add(RappiItem(product: product));
      }

      scrollController.addListener(_onScrollListener);
    }
  }

  void _onScrollListener() {
    if (_listen) {
      for (var i = 0; i < tabs.length; i++) {
        final tab = tabs[i];
        if (scrollController.offset >= tab.offSetFrom &&
            scrollController.offset < tab.offSetTo &&
            !tab.selected) {
          onCategorySelected(i, animationRequired: false);
          tabController.animateTo(i);
          break;
        }
      }
    }
  }

  Future<void> onCategorySelected(int index,
      {bool animationRequired = true}) async {
    final selected = tabs[index];
    for (var i = 0; i < tabs.length; i++) {
      tabs[i] = tabs[i].copyWith(selected: selected == tabs[i]);
    }
    notifyListeners();

    if (animationRequired) {
      _listen = false;
      await scrollController.animateTo(selected.offSetFrom,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }
    _listen = true;
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScrollListener);
    scrollController.dispose();
    tabController.dispose();
    super.dispose();
  }
}

class RappiTabCategory {
  final RappiCategory category;
  final bool selected;
  final double offSetFrom;
  final double offSetTo;
  RappiTabCategory({
    required this.category,
    required this.selected,
    required this.offSetFrom,
    required this.offSetTo,
  });

  RappiTabCategory copyWith({
    RappiCategory? category,
    bool? selected,
    double? offSetFrom,
    double? offSetTo,
  }) {
    return RappiTabCategory(
      category: category ?? this.category,
      selected: selected ?? this.selected,
      offSetFrom: offSetFrom ?? this.offSetFrom,
      offSetTo: offSetTo ?? this.offSetTo,
    );
  }
}

class RappiItem {
  final RappiCategory? category;
  final RappiProduct? product;
  bool get isCategory => category != null;

  RappiItem({this.category, this.product});
}
