package winx.idGenerator;

import java.io.Serializable;
import java.sql.*;
import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

public class KMIdGenerator implements IdentifierGenerator {

	@Override

	public Serializable generate(SessionImplementor session, Object object) throws HibernateException {
		System.out.println("minhNhat");
		String prefix = "KM";
		Connection connection = session.connection();

		try {
			Statement statement = connection.createStatement();

			ResultSet rs = statement.executeQuery("select count(MaKM) as Id from LAPTRINHWEB.dbo.KHUYENMAI");
			System.out.println("minhNhat");

			if (rs.next()) {
				int id = rs.getInt(1) + 101;
				@SuppressWarnings("removal")
				String generatedId = prefix + new Integer(id).toString();
				System.out.println("Generated Id: " + generatedId);
				return generatedId;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

}
