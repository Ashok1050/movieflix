package springmvc_example.dao;

import java.util.List;

import springmvc_example.model.Movies;

public interface MoviesDao {

	List<Movies> getMovies(String sortType);

	Movies getmovieById(int id);

	void updateMovie(Movies movie);
}
