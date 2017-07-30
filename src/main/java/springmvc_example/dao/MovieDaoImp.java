package springmvc_example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

//import javax.swing.tree.TreePath;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import springmvc_example.model.Movies;

@Repository
public class MovieDaoImp implements MoviesDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	private static final class MovieMapper implements RowMapper<Movies>{

		public Movies mapRow(ResultSet rs, int rowNum) throws SQLException {
			Movies movie = new Movies();
			movie.setId(rs.getInt("id"));
			movie.setTitle(rs.getString("title"));
			movie.setYear(rs.getInt("year"));
			movie.setRated(rs.getString("rated"));
			movie.setReleased(rs.getDate("released"));
			movie.setRuntime(rs.getString("runtime"));
			movie.setGenre(rs.getString("genre"));
			movie.setDirector(rs.getString("director"));
			movie.setActors(rs.getString("actors"));
			movie.setWriter(rs.getString("writer"));
			movie.setPlot(rs.getString("plot"));
			movie.setLanguage(rs.getString("language"));
			movie.setCountry(rs.getString("country"));
			movie.setAwards(rs.getString("awards"));
			movie.setPoster(rs.getString("poster"));
			movie.setMetaScore(rs.getInt("metaScore"));
			movie.setImdbRating(rs.getFloat("imdbRating"));
			movie.setImdbVotes(rs.getInt("imdbVotes"));
			movie.setImdbId(rs.getString("imdbId"));
			movie.setType(rs.getString("type"));
			
			return movie;
		}
		
	}
		
	public List<Movies> getMovies(String sortType) {
		
		String sql = "";
		
		if(sortType.equalsIgnoreCase("latest")){
			sql = "select * from movies order by released desc;";
		}else if(sortType.equalsIgnoreCase("toprated")){
			sql = "select * from movies order by imdbrating desc;";
		}else {
			sql = "select * from movies;";
		}
        
        List<Movies> movieList = namedParameterJdbcTemplate.query(sql, getSqlParameterSource(0),new MovieMapper());
        
		return movieList;
	}
	
	public Movies getmovieById(int id) {
		
		String sql = "select Id, Title, Year, Rated, Released, Runtime, Genre,"
				+ " Director, Writer, Actors, Plot, Language, Country, Awards,"
				+ " Poster, MetaScore, ImdbRating, ImdbVotes, ImdbId, Type"
				+ " from movies where id = :id";
		
	   Movies movieVal = namedParameterJdbcTemplate.queryForObject(sql, getSqlParameterSource(id),new MovieMapper());
        
		return movieVal;
	}
	
	private SqlParameterSource getSqlParameterSource(int id){
		MapSqlParameterSource parameterSource = new MapSqlParameterSource();
		parameterSource.addValue("id", id);
		
		return parameterSource;
	}

	public void updateMovie(Movies movie) {
		
		String sql = "update movies set Title=:title, Year=:year, Rated=:rated, Released=:released, Runtime=:runtime, Genre=:genre,"
				+ " Director=:director, Writer=:writer, Actors=:actors, Plot=:plot, Language=:language, Country=:country, Awards=:awards,"
				+ " Poster=:poster, MetaScore=:metaScore, ImdbRating=:imdbRating, ImdbVotes=:imdbVotes, ImdbId=:imdbId, Type=:type"
				+ " where id = :id";
		
			namedParameterJdbcTemplate.update(sql, getSqlParameterSource(movie));
        
	}
	
	private SqlParameterSource getSqlParameterSource(Movies movie){
		MapSqlParameterSource parameterSource = new MapSqlParameterSource();
		parameterSource.addValue("title", movie.getTitle());
		parameterSource.addValue("year", movie.getYear());
		parameterSource.addValue("rated", movie.getRated());
		parameterSource.addValue("released", movie.getReleased());
		parameterSource.addValue("runtime", movie.getRuntime());
		parameterSource.addValue("genre", movie.getReleased());
		parameterSource.addValue("director", movie.getDirector());
		parameterSource.addValue("actors", movie.getActors());
		parameterSource.addValue("writer", movie.getWriter());
		parameterSource.addValue("plot", movie.getPlot());
		parameterSource.addValue("language", movie.getLanguage());
		parameterSource.addValue("country", movie.getCountry());
		parameterSource.addValue("awards", movie.getAwards());
		parameterSource.addValue("poster", movie.getPoster());
		parameterSource.addValue("metaScore", movie.getMetaScore());
		parameterSource.addValue("imdbRating", movie.getImdbRating());
		parameterSource.addValue("imdbVotes", movie.getImdbVotes());
		parameterSource.addValue("imdbId", movie.getImdbId());
		parameterSource.addValue("type", movie.getType());
		parameterSource.addValue("id", movie.getId());
		return parameterSource;
	}
	
}
