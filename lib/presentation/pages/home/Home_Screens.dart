import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/cubit/religion/religion_cubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/religion.dart';
import 'package:sublime_groceria/presentation/widget/bottomappbar.dart';
import 'package:sublime_groceria/presentation/widget/sectionheader.dart';
import 'package:sublime_groceria/common/colors.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1B7C3F),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to Drawer
                    },
                    child: const SizedBox(
                      width: 35,
                      height: 35,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: InkWell(
                  onTap: () {
                    // Show Help Popup
                  },
                  child: const Icon(
                    Icons.help_outline,
                    color: Color(0xff1D1B1B),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB action
        },
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff1B7C3F),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Color(0xffF4F4F4),
        height: 65,
        child: Padding(
          padding: EdgeInsets.only(right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(icon: Icons.home, label: 'Home', isActive: true),
              BottomNavItem(icon: Icons.list, label: 'List'),
              BottomNavItem(icon: Icons.book, label: 'Recipe'),
              BottomNavItem(icon: Icons.account_circle, label: 'Account'),
            ],
          ),
        ),
      ),
      body: BlocBuilder<ReligionCubit, SublimeState<List<Religion>>>(
        builder: (context, state) {
          if (state is SublimeLoading<List<Religion>>) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SublimeLoaded<List<Religion>>) {
            final religions = state.data;

            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, bottom: 30),
                  child: Text(
                    "Your Companion For \nGrocery List",
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorLight.widgetstitle,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SectionHeader(
                    title: religions.isNotEmpty
                        ? religions[0].name
                        : 'No Religions Available',
                    actionText: "View All",
                  ),
                ),
                ...religions.map((religion) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListTile(
                        title: Text(religion.name),
                        subtitle: Text('ID: ${religion.id}'),
                      ),
                    )),
              ],
            );
          } else if (state is SublimeError<List<Religion>>) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
          return const Center(
            child: Text('No data available'),
          );
        },
      ),
    );
  }
}
