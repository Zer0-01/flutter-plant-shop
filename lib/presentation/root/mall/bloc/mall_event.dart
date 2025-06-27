part of 'mall_bloc.dart';

sealed class MallEvent extends Equatable {
  const MallEvent();

  @override
  List<Object> get props => [];
}

class OnInitMallEvent extends MallEvent {
  const OnInitMallEvent();
  @override
  List<Object> get props => [];
}
