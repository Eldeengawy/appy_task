import 'dart:developer';

import 'package:app_task/features/invoice/data/datasources/invoice_remote_data_source.dart';
import 'package:app_task/features/invoice/data/datasources/invoice_remote_data_source_impl.dart';
import 'package:app_task/features/invoice/data/models/invoice_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'invoice_state.dart';

class InvoiceCubit extends Cubit<InvoiceState> {
  final InvoiceRemoteDataSource _remoteDataSource =
      InvoiceRemoteDataSourceImpl();
  InvoiceCubit() : super(InvoiceInitial());
  Future<void> fetchInvoiceDetails() async {
    try {
      emit(InvoiceLoadingState());
      final invoiceList = await _remoteDataSource.fetchInvoiceDetails();
      emit(InvoiceLoadedState(invoiceList));
    } catch (e) {
      log(e.toString());
      emit(InvoiceErrorState(e.toString()));
    }
  }
}
