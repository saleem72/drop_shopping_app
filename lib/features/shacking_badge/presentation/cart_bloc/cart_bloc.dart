//

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<CartIncreaseEvent>(_onIncreaseEvent);
  }

  FutureOr<void> _onIncreaseEvent(
    CartIncreaseEvent event,
    Emitter<CartState> emit,
  ) {
    emit(state.copyWith(count: state.count + 1));
  }
}
