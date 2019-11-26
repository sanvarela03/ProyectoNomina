package nomina.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import nomina.idao.IDevengadoDao;
import nomina.model.Devengado;

public class DevenegadoDaoImpl implements IDevengadoDao {

	private final String URL = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
	private final String USER = "root";
	private final String PASSWORD = "12345678";

	@Override
	public void crearDevengado(Devengado devengado) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

		String sql = "insert into devengados (identificacionEmpleado,auxilioTransporte,horasExtra,bonificaciones,comisiones) values (?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, devengado.getIdentificacionEmpleado());
		st.setDouble(2, devengado.getAuxilioTransporte());
		st.setDouble(3, devengado.getHorasExtra());
		st.setDouble(4, devengado.getBonificaciones());
		st.setDouble(5, devengado.getComisiones());

		st.executeUpdate();
		con.close();
	}

	@Override
	public Devengado leerDevengado(String identificacion) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

		String sql = "select * from devengados where identificacionEmpleado = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, identificacion);
		ResultSet rs = st.executeQuery();
		rs.next();
		Devengado devengado = new Devengado(rs.getString(2), rs.getDouble(3), rs.getDouble(4), rs.getDouble(5), rs.getDouble(6));
		rs.close();
		con.close();
		return devengado;
	}

	@Override
	public void actualizarDevengado(Devengado devengado) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void borrarDevengado(String identificacion) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Devengado> obtenerDevengados() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
