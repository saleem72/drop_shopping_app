//

import 'package:drop_shopping_app/features/paginated_list/generic_paginated_grid.dart';
import 'package:flutter/material.dart';

import 'generic_paginated_list.dart';

class PaginatedListScreen extends StatefulWidget {
  const PaginatedListScreen({super.key});

  @override
  State<PaginatedListScreen> createState() => _PaginatedListScreenState();
}

class _PaginatedListScreenState extends State<PaginatedListScreen> {
  List<String> items = List.generate(30, (index) => 'item ${index + 1}');

  int currentPage = 1;
  final int totalPages = 4;
  bool isPaginating = false;

  bool get hasMore => currentPage < totalPages;

  Future _appendItems() async {
    if (isPaginating) {
      return;
    }

    setState(() {
      isPaginating = true;
    });

    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() {
        isPaginating = false;
        currentPage++;
        final newItems =
            List.generate(10, (index) => 'Item ${index + 1 + items.length}');
        items.addAll(newItems);
      });
    }
  }

  void _refresh() {
    setState(() {
      items = List.generate(30, (index) => 'item ${index + 1}');

      currentPage = 1;
      isPaginating = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paginated List'),
        actions: [
          IconButton(
            onPressed: _refresh,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GenericPaginatedList(
              itemCount: items.length,
              hasMorePages: hasMore,
              isPaginating: isPaginating,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return Text(item);
              },
              onPagination: () async => await _appendItems(),
              paginatingIndicator: const Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                ),
              ),
              // onPagination: () {},
            ),
          ),
          Expanded(
            child: GenericPaginatedGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: items.length,
              hasMorePages: hasMore,
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  color: Colors.grey.shade300,
                  child: Center(child: Text(item)),
                );
              },
              onPagination: () async => _appendItems(),
              isPaginating: isPaginating,
            ),
          ),
        ],
      ),
    );
  }
}
