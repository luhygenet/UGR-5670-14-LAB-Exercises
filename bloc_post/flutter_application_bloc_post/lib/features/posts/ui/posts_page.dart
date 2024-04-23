import 'package:flutter/material.dart';
import 'package:flutter_application_bloc_post/features/posts/bloc/posts_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final PostsBloc postsBloc = PostsBloc();
  @override
  void initState() {
    postsBloc.add(PostsInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('posts page'),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
        onPressed: () {
          postsBloc.add(PostAddEvent());
        }),
        body: BlocConsumer<PostsBloc, PostsState>(
          bloc: postsBloc,
          listenWhen: (previous, current) => current is PostsActionState,
          buildWhen: (previous, current) => current is! PostsActionState,
          listener: (context, state) {},
          builder: (context, state) {
            switch (state.runtimeType) {
              case PostFetchingLoadingState:
                return const Center(child: CircularProgressIndicator());
              case PostFetchingSuccessfulState:
                final succesState = state as PostFetchingSuccessfulState;
                return Container(
                  child: ListView.builder(
                    itemCount: succesState.posts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey.shade200,
                        padding: const EdgeInsets.all(16.0),
                        margin: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(succesState.posts[index].title),
                            Text(succesState.posts[index].body)
                          ],
                        ),
                      );
                    },
                  ),
                );
              default:
                return const SizedBox();
            }
          },
        ));
  }
}
