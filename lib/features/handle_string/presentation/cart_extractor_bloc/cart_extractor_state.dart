// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_extractor_bloc.dart';

class CartExtractorState extends Equatable {
  final ShoppingWebsite? website;
  final String? page;
  final bool isLoading;
  final Duration? htmlDuration;
  final Duration? soapDuration;
  final List<DropShoppingProduct> products;

  String get htmlDurationString =>
      htmlDuration == null ? '' : htmlDuration.toString();
  String get soapDurationString =>
      soapDuration == null ? '' : soapDuration.toString();

  const CartExtractorState({
    required this.website,
    required this.page,
    required this.isLoading,
    required this.htmlDuration,
    required this.soapDuration,
    required this.products,
  });

  @override
  List<Object?> get props => [
        website,
        page,
        isLoading,
        htmlDuration,
        soapDuration,
        products,
      ];

  factory CartExtractorState.initial() => const CartExtractorState(
        page: null,
        isLoading: false,
        htmlDuration: null,
        soapDuration: null,
        products: [],
        website: null,
      );

  CartExtractorState copyWith({
    String? page,
    bool? isLoading,
    Duration? htmlDuration,
    Duration? soapDuration,
    List<DropShoppingProduct>? products,
    ShoppingWebsite? website,
  }) {
    return CartExtractorState(
      page: page ?? this.page,
      isLoading: isLoading ?? this.isLoading,
      htmlDuration: htmlDuration ?? this.htmlDuration,
      soapDuration: soapDuration ?? this.soapDuration,
      products: products ?? this.products,
      website: website ?? this.website,
    );
  }
}
