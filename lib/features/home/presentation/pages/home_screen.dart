import 'package:app_task/features/invoice/presentation/pages/invoice_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Home Screen"),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  /* in general i am using go router for navigation to 
                  be more organized or using the deep link feature 
                  but now i am using this for simplicity and for time
                  */
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InvoiceDetailsScreen(),
                    ),
                  );
                },
                child: const Text('Invoice Detail'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Invoice List'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
