part of 'mall_bloc.dart';

enum FetchProductStatus { initial, loading, success, error }

class MallState extends Equatable {
  final FetchProductStatus status;
  final List<Product> products;

  const MallState({
    this.status = FetchProductStatus.initial,
    this.products = const [],
  });

  MallState copyWith({FetchProductStatus? status, List<Product>? products}) {
    return MallState(
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }

  @override
  List<Object> get props => [status, products];
}
