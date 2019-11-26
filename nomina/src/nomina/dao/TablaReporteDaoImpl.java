package nomina.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import nomina.idao.ITablaReporteDao;
import nomina.model.TablaReporte;

public class TablaReporteDaoImpl implements ITablaReporteDao {
	private final String url = "jdbc:mysql://localhost:3306/nomina?useSSL=false&verifyServerCertificate=true";
	private final String user = "root";
	private final String password = "12345678";

	@Override
	public List<TablaReporte> obtenerTablaReporte() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(url, user, password);

		Statement st = con.createStatement();
		String sql = "select  empleados.nombre, empleados.sueldoBasico, devengados.auxilioTransporte, devengados.horasExtra, devengados.bonificaciones, devengados.comisiones, descuentos.salud, descuentos.pension, descuentos.prestamos, descuentos.embargos, descuentos.fondoEmpleados\r\n"
				+ "from\r\n"
				+ "((empleados INNER JOIN descuentos ON empleados.identificacion = descuentos.identificacionEmpleado) INNER JOIN devengados ON devengados.identificacionEmpleado = empleados.identificacion);";
		ResultSet rs = st.executeQuery(sql);

		List<TablaReporte> tablaReporte = new ArrayList<>();

		while (rs.next()) {
			tablaReporte.add(new TablaReporte(rs.getString(1), rs.getDouble(2), rs.getDouble(3), rs.getDouble(4),
					rs.getDouble(5), rs.getDouble(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9),
					rs.getDouble(10), rs.getDouble(11)));
		}

		rs.close();
		con.close();
		return tablaReporte;
	}

}
