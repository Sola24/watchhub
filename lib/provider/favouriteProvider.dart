import 'package:flutter/cupertino.dart';

import '../models/watchBrands.dart';

class FavouritesProvider extends ChangeNotifier {
  List<WatchBrandsModel> _favouriteItems = [];

  List<WatchBrandsModel> get favouriteItems => _favouriteItems;

  void addToFavourites(WatchBrandsModel item) {
    _favouriteItems.add(item);
    notifyListeners();
    print('Added to favourites: $item');
  }

  void removeFromFavourites(WatchBrandsModel item) {
    _favouriteItems.remove(item);
    notifyListeners(); // Notify listeners of the change
  }

  bool isFavorite(WatchBrandsModel item) {
    return _favouriteItems.contains(item);
  }
}
