part of 'invoice_cubit.dart';

abstract class InvoiceState extends Equatable {
  const InvoiceState();

  @override
  List<Object> get props => [];
}

class InvoiceInitial extends InvoiceState {}
class InvoiceLoadingState extends InvoiceState {}
class InvoiceLoadedState extends InvoiceState {
  final List<InvoiceModel> invoiceList;

  const InvoiceLoadedState(this.invoiceList);
}
class InvoiceErrorState extends InvoiceState {
  final String error;

  const InvoiceErrorState(this.error);
}
