import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/data/model/product_dto_response.dart';
import 'package:flutter_data_flows/data/repository/product_repository.dart';

part 'mall_event.dart';
part 'mall_state.dart';

class MallBloc extends Bloc<MallEvent, MallState> {
  late final ProductRepository _productRepository;
  MallBloc({required ProductRepository productRepository})
    : _productRepository = productRepository,
      super(const MallState()) {
    on<OnInitMallEvent>(_onInitMall);
  }

  Future<void> _onInitMall(
    OnInitMallEvent event,
    Emitter<MallState> emit,
  ) async {
    emit(state.copyWith(status: FetchProductStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    final ProductDtoResponse productDtoResponse =
        await _productRepository.getProducts();

    emit(
      state.copyWith(
        status: FetchProductStatus.success,
        products: productDtoResponse.data,
      ),
    );
  }
}
