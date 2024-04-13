package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Credit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CreditDao {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Credit> getCredit() {
        String sqlStatement = "SELECT year, semester, SUM(credit) AS total_credit FROM course GROUP BY year, semester";

        return jdbcTemplate.query(sqlStatement, new RowMapper<Credit>() {
            @Override
            public Credit mapRow(ResultSet rs, int rowNum) throws SQLException {
                Credit credit = new Credit();
                credit.setYear(rs.getInt("year"));
                credit.setSemester(rs.getInt("semester"));
                credit.setCredit(rs.getInt("total_credit"));
                return credit;
            }
        });
    }

    public List<Credit> getAllCourse(int year, int semester) {
        String sqlStatement = "SELECT * FROM course WHERE year = ? AND semester = ?";

        return jdbcTemplate.query(sqlStatement, new Object[]{year, semester}, new RowMapper<Credit>() {
            @Override
            public Credit mapRow(ResultSet rs, int rowNum) throws SQLException {
                Credit credit = new Credit();
                credit.setYear(rs.getInt("year"));
                credit.setSemester(rs.getInt("semester"));
                credit.setCourse_name(rs.getString("course_name"));
                credit.setCourse_type(rs.getString("course_type"));
                credit.setInstructor(rs.getString("instructor"));
                credit.setCredit(rs.getInt("credit"));
                return credit;
            }
        });
    }

    public void saveCourse(Credit credit) {
        String sqlStatement = "INSERT INTO course (course_code, year, semester, course_name, course_type, instructor, credit) " +
                "VALUES (?,?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sqlStatement,
                credit.getCourse_code(),
                credit.getYear(),
                credit.getSemester(),
                credit.getCourse_name(),
                credit.getCourse_type(),
                credit.getInstructor(),
                credit.getCredit());
    }

}
