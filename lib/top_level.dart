import 'package:appwrite_renew/app/routes/auto_route.gr.dart';
import 'package:appwrite_renew/articles/view/articles_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TopLevel extends StatelessWidget {
  const TopLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRouter(), ArticlesRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Schedule',
            ),
          ],
        );
      },
    );
  }
}
