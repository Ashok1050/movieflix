package springmvc_example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc_example.dao.MoviesDao;
import springmvc_example.model.Movies;


@Service
public class MovieServiceImpl implements MovieService {
	
	MoviesDao movieDao;
	
	@Autowired
	public void setMoviesDao(MoviesDao movieDao) {
		this.movieDao = movieDao;
	}
	
	public List<Movies> getmovies(String sortType) {
		return movieDao.getMovies(sortType);
	}
	
	public Movies getmovieById(int id) {
		return movieDao.getmovieById(id);
	}

	public void updateMovie(Movies movie) {
		movieDao.updateMovie(movie);
		
	}
}
