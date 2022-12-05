import 'package:baito_search_app/models/job_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                Image.asset("assets/images/user.png")
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hey Amit Bidlan,",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const Text("Let\'s find a Job for you",
                style: TextStyle(fontSize: 14)),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/search.svg"),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Search jobs near you",
                    style: TextStyle(color: Color(0xFFA0A5BD)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Jobs Category",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                Text("See all")
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {},
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF653bbf),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(categories[index].name_of_job_category)],
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
