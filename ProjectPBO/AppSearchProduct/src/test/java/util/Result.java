package util;

import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Result {
    @Test
    void searchProduct() throws SQLException {
        Connection connection = DatabaseUtil.getDataSource().getConnection();
        Statement statement = connection.createStatement();

        String sql = """
                SELECT * FROM product
                WHERE MATCH(nama, deskripsi)
                AGAINST('obat' IN NATURAL LANGUAGE MODE)""";

        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
            String nama = resultSet.getString("nama");
            String deskripsi = resultSet.getString("deskripsi");
            String harga = resultSet.getString("harga");

            System.out.println("Nama Produk : " + nama + " " +"Harga : " + harga + " " + "Deskripsi : " + deskripsi);
        }

        resultSet.close();
        statement.close();
        connection.close();
    }
}
