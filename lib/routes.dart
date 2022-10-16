// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import 'modules/project_detail/detail_view.dart';
//
// class MyRouter {
//   // 1
//   final LoginState loginState;
//   MyRouter(this.loginState);
//
//   // 2
//   late final router = GoRouter(
//     // 3
//     refreshListenable: loginState,
//     // 4
//     debugLogDiagnostics: true,
//     // 5
//     urlPathStrategy: UrlPathStrategy.path,
//
//     // 6
//     routes: [
//       // TODO: Add Routes
//       GoRoute(
//         name: createAccountRouteName,
//         path: '/create-account',
//         pageBuilder: (context, state) => MaterialPage<void>(
//           key: state.pageKey,
//           child: const ProjectsDetailsView(),
//         ),
//       ),
//     ],
//     // TODO: Add Error Handler
//     // TODO Add Redirect
//   );
// }
