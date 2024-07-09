import 'package:app_task/features/invoice/presentation/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsScreen extends StatefulWidget {
  const InvoiceDetailsScreen({super.key});

  @override
  State<InvoiceDetailsScreen> createState() => _InvoiceDetailsScreenState();
}

class _InvoiceDetailsScreenState extends State<InvoiceDetailsScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController unitNumberController =
      TextEditingController(text: '0');
  final TextEditingController expiryDateController = TextEditingController();

  List<int> untIds = [0, 1, 2, 3, 4, 5];
  void calculateTotal() {
    double price = double.parse(priceController.text);
    double quantity = double.parse(quantityController.text);
    double total = price * quantity;
    setState(() {
      totalController.text = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text('Invoice Details Page'),
                  const SizedBox(
                    height: 80,
                  ),
                  CustomFormField(
                    controller: productNameController,
                    title: 'Product Name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Unit No'),
                      DropdownButton(
                        value: int.tryParse(unitNumberController.text),
                        items: [
                          for (int i = 0; i < untIds.length; i++)
                            DropdownMenuItem(
                              value: untIds[i],
                              child: Text(untIds[i].toString()),
                            )
                        ],
                        onChanged: (value) {
                          setState(() {
                            unitNumberController.text = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormField(
                    controller: productNameController,
                    title: 'Price',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormField(
                    controller: productNameController,
                    title: 'Quantity',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormField(
                    controller: productNameController,
                    title: 'Total',
                    isDisabled: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'New',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Save',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Back',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Delete',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
