import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/screen_title.dart';
import '../constants.dart';
import '../graphql/queries/board.graphql.dart';
import '../screens/not_found_screen.dart';

class ShowBoardScreen extends StatefulWidget {
  const ShowBoardScreen({super.key, this.username, required this.slug});

  final String? username;
  final String slug;

  @override
  State<ShowBoardScreen> createState() => _ShowBoardScreenState();
}

class _ShowBoardScreenState extends State<ShowBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Query$Board$Widget(
      options: Options$Query$Board(variables: Variables$Query$Board(idOrSlug: widget.slug)),
      builder: (result, {fetchMore, refetch}) {
        final board = result.parsedData?.board;

        if (board == null || (widget.username != null && board.user.identityUser.username != widget.username)) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const NotFoundScreen();
          }
        }

        return ScreenTitle(
          title: '${board.name} by @${board.user.identityUser.username}',
          child: Scaffold(
            appBar: AppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(board.name),
                  Text('by @${board.user.identityUser.username}', style: TextStyle(fontSize: 12)),
                ],
              ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent,
              leading: BackButton(onPressed: () => context.goNamed(routeNameHome)),
            ),
            body: SizedBox(),
          ),
        );
      },
    );
  }
}
