import 'package:flutter/material.dart';
import 'package:flutter_instant/sessions/session19/widgets.dart';

class SportsStore extends StatelessWidget {
  const SportsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              sportsAppbar(),
              catSection(),
              const SizedBox(height: 15),
              title('Best Selling'),
              SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 5.0,
                    childAspectRatio: 3/4,
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
