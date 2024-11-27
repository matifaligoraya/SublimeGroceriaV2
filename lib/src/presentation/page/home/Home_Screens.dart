import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/src/presentation/bloc/Religion/Religion_bloc.dart';
import 'package:sublime_groceria/src/presentation/widget/bottomappbar.dart';

class HomeScreens extends StatelessWidget {
  final ReligionBloc religionBloc;

  const HomeScreens({super.key, required this.religionBloc});

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
                      // Add navigation to Drawer if needed
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
                    // Add a popup action
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
        onPressed: () {},
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
      body: BlocConsumer<ReligionBloc, ReligionState>(
        bloc: religionBloc,
        listenWhen: (previous, current) => current is Religionactionstate,
        buildWhen: (previous, current) => current is! Religionactionstate,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case Religionfetching:
              final successState = state as Religionfetching;

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 20, bottom: 30),
                        child: Text(
                          "Your Companion For \nGrocery List",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: successState.religions.length,
                        itemBuilder: (BuildContext context, int index) {
                          var religion = successState.religions[index];
                          return Text(religion.name);
                        },
                      ),
                    ],
                  ),
                ),
              );
            default:
              return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
