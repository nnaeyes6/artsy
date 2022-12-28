import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartCounter {
  var counter = 0;
}

// final counterProvider = Provider<CartCounter>((ref) => CartCounter());
final counterCardProvider = StateProvider<CartCounter>((ref) {
  return CartCounter();
});
