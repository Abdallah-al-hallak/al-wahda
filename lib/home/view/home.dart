import 'package:appwrite/appwrite.dart';
import 'package:appwrite_renew/home/bloc/home_bloc.dart';
import 'package:appwrite_renew/models/home_model.dart';
import 'package:appwrite_renew/repositoy/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/bloc/app_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomeView());
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(HomeRepository(client: Client()))..add(const Subscribtion()),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(const LogOutReq()),
            // context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeWhen(
                loaded: (team) => print(team[0].name),
                failure: () => print('failure'),
                orElse: () => Text(''));
          },
          builder: (context, state) {
            return state.map(
                loading: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loaded: (loaded) => buildWidget(loaded.team),
                failure: (value) => const Text('failure'));
          },
        ),
      ),
    );
  }

  buildWidget(List<HomeModel> list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'The Basketball Team',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.orange[800]),
                    )
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(9.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          list[index].name,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(list[index].number.toString()),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            list[index].picture,
                          )),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 163, 161, 161),
                          offset: Offset(3, 2),
                        ),
                        BoxShadow(
                          color: Color.fromARGB(136, 244, 235, 235),
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 42,
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  width: double.infinity,
                  child: const Text(
                    'Team Information',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 75,
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Center(
                  child: Card(
                      color: Colors.black87,
                      margin: const EdgeInsets.all(10.0),
                      child: ListTile(
                          leading: Image.network(
                            list[index].pic,
                            fit: BoxFit.fill,
                            width: 30,
                          ),
                          trailing: SvgPicture.network(
                            list[index].flag,
                            width: 30,
                          ),
                          title: Text(
                            list[index].name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ))),
                );
              },
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
