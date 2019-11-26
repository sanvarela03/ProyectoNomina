package nomina.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import nomina.idao.IDescuentoDao;
import nomina.model.Descuento;

public class DescuentoDaoImpl implements IDescuentoDao {

	
	private final String URL = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
	private final String USER = "root";
	private final String PASSWORD = "12345678";

	
	
	@Override
	public void crearDescuento(Descuento descuento) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

		String sql = "insert into descuentos (identificacionEmpleado,salud,pension,prestamos,embargos,fondoEmpleados) values (?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, descuento.getIdentificacionEmpleado());
		st.setDouble(2, descuento.getSalud());
		st.setDouble(3, descuento.getPension());
		st.setDouble(4, descuento.getPrestamos());
		st.setDouble(5, descuento.getEmbargos());
		st.setDouble(6, descuento.getFondoEmpleados());

		st.executeUpdate();
		con.close();

	}

	@Override
	public Descuento leerDescuento(String identificacion) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void actualizarDescuento(Descuento descuento) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void borrarDescuento(String identificacion) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Descuento> obtenerDescuentos() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
