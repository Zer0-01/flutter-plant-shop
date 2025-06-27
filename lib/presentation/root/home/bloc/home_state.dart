part of 'home_bloc.dart';

enum FetchUserStatus { initial, loading, success, error }

class HomeState extends Equatable {
  final FetchProductStatus fetchProductStatus;
  final FetchUserStatus fetchUserStatus;
  final List<Product> products;
  final num credit;
  final num points;
  final num package;
  const HomeState({
    this.fetchProductStatus = FetchProductStatus.initial,
    this.fetchUserStatus = FetchUserStatus.initial,
    this.products = const [],
    this.credit = 0,
    this.points = 0,
    this.package = 0,
  });

  HomeState copyWith({
    FetchProductStatus? fetchProductStatus,
    FetchUserStatus? fetchUserStatus,
    List<Product>? products,
    num? credit,
    num? points,
    num? package,
  }) {
    return HomeState(
      fetchProductStatus: fetchProductStatus ?? this.fetchProductStatus,
      fetchUserStatus: fetchUserStatus ?? this.fetchUserStatus,
      products: products ?? this.products,
      credit: credit ?? this.credit,
      points: points ?? this.points,
      package: package ?? this.package,
    );
  }

  @override
  List<Object> get props => [
    fetchProductStatus,
    fetchUserStatus,
    products,
    credit,
    points,
    package,
  ];
}
