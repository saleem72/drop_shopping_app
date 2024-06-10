//

import 'package:drop_shopping_app/features/shacking_badge/presentation/cart_bloc/cart_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:api_helper/api_helper.dart';
import 'package:drop_shopping_app/core/data/helpers/cart_extractors/cart_extractor.dart';
import 'package:drop_shopping_app/core/data/helpers/cart_extractors/hm_cart_extractor.dart';
import 'package:drop_shopping_app/features/handle_string/presentation/cart_extractor_bloc/cart_extractor_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

initDependencies() {
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(),
  );
  locator.registerLazySingleton(
    () => http.Client(),
  );
  locator.registerLazySingleton<ApiHelper>(
    () => HttpApiHelper(
      client: locator(),
      networkInfo: locator(),
    ),
  );
  locator.registerLazySingleton<CartExtractor>(
    () => (HMCartExtractor()),
  );

  locator.registerFactory(
    () => CartExtractorBloc(
      extractor: locator(),
    ),
  );

  locator.registerFactory(() => CartBloc());
}
