package database.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import database.model.blog;

public class blogDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public blog getBlogById(int id) {
		String sql = "SELECT * FROM blog where id= ?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<blog>(blog.class));
	}
	
	public List<blog> getAllBlog(){
		return template.query("SELECT * FROM blog", new RowMapper<blog>(){
			@Override
			public blog mapRow(ResultSet result ,int rowNumber) throws SQLException{
				blog b = new blog();
				b.setId(result.getInt("id"));
				b.setName(result.getString("name"));
				b.setImage(result.getString("image"));
				b.setFeatured(result.getInt("featured"));
				b.setInfo(result.getString("info"));
				b.setTags(result.getString("tags"));
				return b;
			}
		});
	}
}
