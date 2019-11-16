package nomina.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import nomina.idao.IEmpleadoDao;
import nomina.model.Empleado;

public class EmpleadoDaoImpl implements IEmpleadoDao {

	@Override
	public void crearEmpleado(Empleado empleado) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
		String user = "root";
		String password = "12345678";

		Connection con = DriverManager.getConnection(url, user, password);

		String sql = "insert into empleados values (?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, empleado.getIdentificacion());
		st.setString(2, empleado.getNombre());
		st.setString(3, empleado.getCargo());
		st.setDouble(4, empleado.getSueldoBasico());

		st.executeUpdate();
		con.close();
	}

	@Override
	public Empleado leerEmpleado(String identificacion) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
		String user = "root";
		String password = "12345678";

		Connection con = DriverManager.getConnection(url, user, password);

		Statement st = con.createStatement();
		String sql = "select * from empleados where identificacion = " + identificacion;
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		Empleado empleado = new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4));
		rs.close();
		con.close();
		return empleado;
	}

	@Override
	public void actualizarEmpleado(Empleado empleado) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
		String user = "root";
		String password = "12345678";

		Connection con = DriverManager.getConnection(url, user, password);
		

		String sql = "UPDATE empleados " 
				    +"SET nombre = ? , cargo = ? , sueldoBasico = ? "
				    +"WHERE identificacion = " + empleado.getIdentificacion();
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, empleado.getNombre());
		st.setString(2, empleado.getCargo());
		st.setDouble(3, empleado.getSueldoBasico());
		
		st.executeUpdate();
		con.close();
	}

	@Override
	public void borrarEmpleado(String identificacion) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
		String user = "root";
		String password = "12345678";

		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "DELETE FROM empleados WHERE identificacion = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, identificacion);
		st.executeUpdate();
		con.close();
	}

	@Override
	public List<Empleado> obtenerEmpleados() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
		String user = "root";
		String password = "12345678";

		Connection con = DriverManager.getConnection(url, user, password);

		Statement st = con.createStatement();
		String sql = "select * from empleados";
		ResultSet rs = st.executeQuery(sql);

		List<Empleado> empleados = new ArrayList<Empleado>();

		while (rs.next()) {
			empleados.add(new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
		}
		rs.close();
		con.close();
		return empleados;
	}

}
