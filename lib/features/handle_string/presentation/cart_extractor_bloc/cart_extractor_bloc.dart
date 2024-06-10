//

import 'dart:developer' as developer;

import 'package:drop_shopping_app/core/data/helpers/cart_extractors/cart_extractor.dart';
import 'package:drop_shopping_app/core/data/helpers/cart_extractors/general_cart_extractor.dart';
import 'package:drop_shopping_app/core/data/helpers/cart_extractors/html_keys_provider.dart';
import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_extractor_event.dart';
part 'cart_extractor_state.dart';

class CartExtractorBloc extends Bloc<CartExtractorEvent, CartExtractorState> {
  final CartExtractor extractor;
  CartExtractorBloc({
    required this.extractor,
  }) : super(CartExtractorState.initial()) {
    on<CartExtractorSetPageEvent>(_onSetPageEvent);
    on<CartExtractorDecodeOriginalEvent>(_onDecodeOriginalEvent);
    on<CartExtractorDecodeEnhancedEvent>(_onDecodeEnhancedEvent);
    on<CartExtractorClearEvent>(_onClearEvent);
    on<CartExtractorSendApiEvent>(_onSendApiEvent);
  }

  _onSetPageEvent(
    CartExtractorSetPageEvent event,
    Emitter<CartExtractorState> emit,
  ) {
    emit(state.copyWith(page: event.page, website: event.website));
  }

  _onDecodeOriginalEvent(
    CartExtractorDecodeOriginalEvent event,
    Emitter<CartExtractorState> emit,
  ) async {
    final page = state.page;
    if (state.isLoading || page == null) {
      return;
    }

    emit(state.copyWith(isLoading: true));
    final startDate = DateTime.now();
    final products = await extractor.htmlDecoding(page);
    final endDate = DateTime.now();
    emit(state.copyWith(
      isLoading: false,
      htmlDuration: endDate.difference(startDate),
      products: products,
    ));
  }

  _onDecodeEnhancedEvent(
    CartExtractorDecodeEnhancedEvent event,
    Emitter<CartExtractorState> emit,
  ) async {
    final page = state.page;
    if (state.isLoading || page == null) {
      return;
    }

    emit(state.copyWith(isLoading: true));
    final startDate = DateTime.now();
    final _ = await GeneralCartExtractor.chaleno(state.website!.url);
    final endDate = DateTime.now();

    emit(state.copyWith(
      isLoading: false,
      soapDuration: endDate.difference(startDate),
      // products: products,
    ));
  }

  _onClearEvent(
    CartExtractorClearEvent event,
    Emitter<CartExtractorState> emit,
  ) {
    emit(CartExtractorState.initial().copyWith(page: state.page));
  }

  _onSendApiEvent(
      CartExtractorSendApiEvent event, Emitter<CartExtractorState> emit) async {
    if (state.isLoading) {
      return;
    }
    developer.log('_onSendApiEvent');
    emit(state.copyWith(isLoading: true));
    final items = await GeneralCartExtractor.htmlDecoding(
      // keysList: state.website?.keys ?? [],
      keysList: HtmlKeysProvider().hmCartKeys,
      body: state.page!,
    );

    try {
      final products =
          items.map((e) => DropShoppingProduct.fromMap(e)).toList();

      emit(state.copyWith(products: products, isLoading: false));
    } catch (e) {
      developer.log(e.toString(), name: 'CartExtractorBloc', error: e);
      emit(state.copyWith(isLoading: false));
    }
  }
}
