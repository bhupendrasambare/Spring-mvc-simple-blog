package database.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import database.model.user;

public class userDao {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public user getUser(int id) {
		String sql = "select * from user where id = ?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<user>(user.class));
	}
}
