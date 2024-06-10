//

import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/presentation/widgets/loading_button.dart';
import 'package:drop_shopping_app/core/presentation/widgets/shopping_product_card.dart';
import 'package:drop_shopping_app/dependency_injection.dart' as di;
import 'package:drop_shopping_app/features/handle_string/presentation/cart_extractor_bloc/cart_extractor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HandleStringScreen extends StatelessWidget {
  const HandleStringScreen({
    super.key,
    required this.website,
    required this.page,
  });

  final ShoppingWebsite website;
  final String? page;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartExtractorBloc>(
      create: (context) => di.locator()
        ..add(
          CartExtractorSetPageEvent(
            website: website,
            page: page,
          ),
        ),
      child: const HandleStringView(),
    );
  }
}

class HandleStringView extends StatelessWidget {
  const HandleStringView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handle String'),
      ),
      body: BlocBuilder<CartExtractorBloc, CartExtractorState>(
        builder: (context, state) {
          return _buildContent(context, state);
        },
      ),
    );
  }

  Column _buildContent(BuildContext context, CartExtractorState state) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Text('Original: '),
                    Expanded(
                      child: Text(
                        state.htmlDurationString,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  children: [
                    const Text('Enhanced: '),
                    Expanded(
                      child: Text(
                        state.soapDurationString,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: state.products.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.products.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 16);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final product = state.products[index];
                    return ShoppingProductCard(product: product);
                  },
                )
              : const SizedBox.shrink(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => context
                    .read<CartExtractorBloc>()
                    .add(CartExtractorSendApiEvent()),
                child: const Text('Api'),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => context
                        .read<CartExtractorBloc>()
                        .add(CartExtractorClearEvent()),
                    child: const Text('Clear'),
                  ),
                  LoadingButton(
                    isLoading: state.isLoading,
                    onPressed: () => context
                        .read<CartExtractorBloc>()
                        .add(CartExtractorDecodeOriginalEvent()),
                    label: 'Original',
                  ),
                  LoadingButton(
                    isLoading: state.isLoading,
                    onPressed: () => context
                        .read<CartExtractorBloc>()
                        .add(CartExtractorDecodeEnhancedEvent()),
                    label: 'Enhanced',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
