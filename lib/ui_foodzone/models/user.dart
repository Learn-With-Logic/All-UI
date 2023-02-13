import 'order.dart';
import 'restaurant.dart';
import 'food.dart';

class User {
  final String? name;
  final List<Order>? orders;
  final List<Order>? cart;

  User({
    this.name,
    this.orders,
    this.cart,
  });
}
