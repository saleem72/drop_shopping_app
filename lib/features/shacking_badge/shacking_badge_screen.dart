//

import 'package:drop_shopping_app/dependency_injection.dart' as di;
import 'package:drop_shopping_app/features/shacking_badge/presentation/cart_bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_core/my_core.dart';

import 'presentation/shacking_badge/shacking_badge_button.dart';

class ShackingBadgeScreen extends StatelessWidget {
  const ShackingBadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => di.locator(),
      child: const ShackingBadgeView(),
    );
  }
}

class ShackingBadgeView extends StatelessWidget {
  const ShackingBadgeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shacking Badge'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return ShackingBadgeButton(
                    onPressed: () {},
                    count: state.count,
                    icon: const Icon(Icons.shopping_cart),
                    offset: const Offset(0, 0),
                    splashColor: Colors.green,
                    textStyle: context.textTheme.bodySmall?.copyWith(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: () => context.read<CartBloc>().add(CartIncreaseEvent()),
            child: const Text('Increase'),
          ),
        ],
      ),
    );
  }
}
