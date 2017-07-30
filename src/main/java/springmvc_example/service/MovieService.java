package springmvc_example.service;

import java.util.List;

import springmvc_example.model.Movies;

public interface MovieService {

	public List<Movies> getmovies(String sortType);

	public Movies getmovieById(int id);

	public void updateMovie(Movies movie);
}
