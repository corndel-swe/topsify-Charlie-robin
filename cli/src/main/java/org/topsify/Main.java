package org.topsify;

import java.util.List;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.topsify.models.User;
import org.topsify.utils.JsonFileReader;
import org.topsify.utils.SqlFileWriter;


public class Main {
    public static void main(String[] args) {
        ObjectMapper objectMapper = new ObjectMapper();
        JsonFileReader jsonFileReader = new JsonFileReader(objectMapper);
        SqlFileWriter sqlFileWriter = new SqlFileWriter();
        try {
            List<User> users = jsonFileReader.readJsonArray("users.json", new TypeReference<List<User>>() {
            });
            sqlFileWriter.writeUsersToSQL(users, "./db/seeds/users.sql");
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}