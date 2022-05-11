import 'package:appwrite_renew/home/view/home.dart';
import 'package:appwrite_renew/top_level.dart';
import 'package:auto_route/annotations.dart';

import '../../articles/view/articles_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: TopLevel,
      children: [
        // our BooksRouter has been moved into the children field
        AutoRoute(
          path: "books",
          name: "HomeRouter",
          page: HomeView,
          children: [
            // AutoRoute(path: '', page: BooksPage),
            // AutoRoute(path: ':bookId', page: BookDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // our AccountRouter has been moved into the children field
        AutoRoute(
          path: "articles",
          name: "ArticlesRouter",
          page: ArticlesView,
          children: [
            // AutoRoute(path: '', page: AccountPage),
            // AutoRoute(path: 'details', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
