package org.topsify;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class SqlFileWriter {

    public <T extends SqlInsertable> void writeUsersToSQL(List<T> insertables, String outputFileName) throws RuntimeException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFileName))) {
            for (T toInsert : insertables) {
                writer.append(toInsert.getSQLInsert());
            }
        } catch (IOException exception) {
            throw new RuntimeException("Failed to write to SQL file: " + outputFileName, exception);
        }

    }
}
