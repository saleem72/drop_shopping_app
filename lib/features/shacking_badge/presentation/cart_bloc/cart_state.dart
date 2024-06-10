// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

class CartState extends Equatable {
  final int count;
  const CartState({
    required this.count,
  });

  @override
  List<Object> get props => [count];

  factory CartState.initial() => const CartState(
        count: 0,
      );

  CartState copyWith({
    int? count,
  }) {
    return CartState(
      count: count ?? this.count,
    );
  }
}
