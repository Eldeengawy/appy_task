import 'package:app_task/core/apis/dio_helper.dart';
import 'package:app_task/core/apis/endpoints.dart';
import 'package:app_task/features/invoice/data/datasources/invoice_remote_data_source.dart';
import 'package:app_task/features/invoice/data/models/invoice_details_request.dart';
import 'package:app_task/features/invoice/data/models/invoice_details_response.dart';
import 'package:app_task/features/invoice/data/models/invoice_model.dart';

class InvoiceRemoteDataSourceImpl implements InvoiceRemoteDataSource {
  final DioHelper _dioHelper = DioHelper();
  @override
  Future<List<InvoiceModel>> fetchInvoiceDetails() async {
    final response = await _dioHelper.get(Endpoints.invoiceDetail);
    return (response['data'] as List)
        .map((e) => InvoiceModel.fromJson(e))
        .toList();
  }

  @override
  Future<InvoiceDetailsResponse> createInvoiceDetails(InvoiceDetailsRequest request) async {
    final response = await _dioHelper.post(Endpoints.invoiceDetail, request.toJson());
    return InvoiceDetailsResponse.fromJson(response);
  }
}
