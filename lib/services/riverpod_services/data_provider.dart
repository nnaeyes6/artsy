import 'package:artsy/core/constants/api_constants.dart';
import 'package:artsy/services/api_services/repository/main_api_services.dart';
import 'package:artsy/ui/product_description_view/product_descriptionview_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artsyDataProvider = FutureProvider((ref) {
  return ref.watch(artsyProvider).getArtsyArts();
});

final counterProvider = StateProvider<int>((ref) {
  return ref.watch(counterCardProvider).counter;
});


// final cartMinusProvider = StateProvider.autoDispose((ref) {
//   return ref.watch(cartProvider).cartDecrement();
// });
