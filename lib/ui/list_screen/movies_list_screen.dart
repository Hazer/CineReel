import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_movies/bloc_providers/movie_provider.dart';
import 'package:flutter_bloc_movies/ui/common_widgets/empty_result_widget.dart';
import 'package:flutter_bloc_movies/ui/common_widgets/movies_error_widget.dart';
import 'package:flutter_bloc_movies/ui/common_widgets/movies_loading_widget.dart';
import 'package:flutter_bloc_movies/ui/list_screen/movie_state.dart';
import 'package:flutter_bloc_movies/ui/list_screen/movies_list_widget.dart';
import 'package:flutter_bloc_movies/utils/TabConstants.dart';

class MoviesListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
			key: Key("rootColumn"),
				children: [
      Flexible(
          child:
              buildStreamBuilder(context, TabKey.kNowPlaying, TabKey.kNowPlaying.index))
    ]);
  }

  StreamBuilder<MoviesState> buildStreamBuilder(BuildContext context, TabKey tabKey, int tabIndex) {
		final movieBloc = MovieProvider.of(context);

		return StreamBuilder(
			key: Key('streamBuilder'),
        stream: movieBloc.stream,
        builder: (context, snapshot) {
          final data = snapshot.data;
          return Column(
            children: <Widget>[
              Expanded(
                child: Stack(
									key: Key('content'),
                  children: <Widget>[
                    // Fade in an Empty Result screen if the search contained
                    // no items
                    EmptyWidget(visible: data is MoviesEmpty),

                    // Fade in a loading screen when results are being fetched
                    MoviesLoadingWidget(visible: data is MoviesLoading),

                    // Fade in an error if something went wrong when fetching
                    // the results
                    MoviesErrorWidget(
                        visible: data is MoviesError,
                        error: data is MoviesError ? data.error : ""),

                    // Fade in the Result if available
                    MovieListWidget(
                        movieBloc: movieBloc,
                        tabKey: tabKey,
                        movies: data is MoviesPopulated ? data.movies : []),
                  ],
                ),
              ),
            ],
          );
        });
  }
}