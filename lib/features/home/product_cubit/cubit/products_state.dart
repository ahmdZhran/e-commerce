part of 'products_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProducLoading extends ProductState {}

final class ProducSuccess extends ProductState {}

final class ProducFailer extends ProductState {
  final String errMessage;

  ProducFailer({required this.errMessage});
}
