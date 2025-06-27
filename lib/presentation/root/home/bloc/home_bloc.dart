import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/data/model/product_dto_response.dart';
import 'package:flutter_data_flows/data/model/user_dto_response.dart';
import 'package:flutter_data_flows/data/repository/product_repository.dart';
import 'package:flutter_data_flows/data/repository/user_repository.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late final ProductRepository _productRepository;
  late final UserRepository _userRepository;

  HomeBloc({
    required ProductRepository productRepository,
    required UserRepository userRepository,
  }) : _productRepository = productRepository,
       _userRepository = userRepository,
       super(const HomeState()) {
    on<OnInitHomeEvent>(_onInitHomeEvent);
  }

  Future<void> _onInitHomeEvent(
    OnInitHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await Future.wait([_fetchUser(event, emit), _fetchProduct(event, emit)]);
  }

  Future<void> _fetchProduct(
    OnInitHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(fetchProductStatus: FetchProductStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    try {
      final ProductDtoResponse productDtoResponse =
          await _productRepository.getProducts();
      final List<Product> products = productDtoResponse.data;
      emit(
        state.copyWith(
          fetchProductStatus: FetchProductStatus.success,
          products: products,
        ),
      );
    } catch (e) {
      emit(state.copyWith(fetchProductStatus: FetchProductStatus.error));
    }
  }

  Future<void> _fetchUser(
    OnInitHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(fetchUserStatus: FetchUserStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    try {
      final UserDtoResponse userDtoResponse = await _userRepository.getUser();
      final num credit = userDtoResponse.credit;
      final num points = userDtoResponse.points;
      final num package = userDtoResponse.package;

      emit(
        state.copyWith(
          fetchUserStatus: FetchUserStatus.success,
          credit: credit,
          points: points,
          package: package,
        ),
      );
    } catch (e) {
      emit(state.copyWith(fetchUserStatus: FetchUserStatus.error));
    }
  }
}
