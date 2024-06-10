// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_extractor_bloc.dart';

sealed class CartExtractorEvent extends Equatable {
  const CartExtractorEvent();

  @override
  List<Object> get props => [];
}

class CartExtractorSetPageEvent extends CartExtractorEvent {
  final String? page;
  final ShoppingWebsite website;
  const CartExtractorSetPageEvent({
    required this.page,
    required this.website,
  });
}

class CartExtractorDecodeOriginalEvent extends CartExtractorEvent {}

class CartExtractorDecodeEnhancedEvent extends CartExtractorEvent {}

class CartExtractorClearEvent extends CartExtractorEvent {}

class CartExtractorSendApiEvent extends CartExtractorEvent {}
