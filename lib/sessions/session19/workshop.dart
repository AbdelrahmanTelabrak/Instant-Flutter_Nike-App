import 'package:flutter/material.dart';
import 'package:flutter_instant/sessions/session19/widgets.dart';

class SportsStore extends StatelessWidget {
  const SportsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: sportsAppbar(),
        leadingWidth: double.infinity,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //sportsAppbar(),
              catSection(),
              const SizedBox(height: 15),
              title('Best Selling'),
              SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0, // Gap between rows
                    crossAxisSpacing: 10.0, // Gap between columns
                    mainAxisExtent: 250,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) => bestSellItem(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
