import 'package:app_task/features/invoice/data/models/invoice_details_request.dart';
import 'package:app_task/features/invoice/data/models/invoice_details_response.dart';
import 'package:app_task/features/invoice/data/models/invoice_model.dart';

abstract class InvoiceRemoteDataSource {
  Future<List<InvoiceModel>> fetchInvoiceDetails();
  Future<InvoiceDetailsResponse> createInvoiceDetails(InvoiceDetailsRequest request);
}
