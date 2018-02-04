package spittr.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

import javax.sql.DataSource;

@Configuration
public class DataConfig {
    @Bean
    public DataSource dataSource() {
        return new EmbeddedDatabaseBuilder()
                .setType(EmbeddedDatabaseType.H2)
                .setScriptEncoding("utf-8")
                .addScript("classpath:sqlData/table.sql")
                .addScript("classpath:sqlData/data.sql")
                .build();
    }

    @Bean
    public JdbcOperations jdbcTemplates(DataSource dataSource) {
        return new JdbcTemplate(dataSource);
    }
}
