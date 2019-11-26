package nomina.demo;

import nomina.dao.EmpleadoDaoImpl;
import nomina.dao.TablaReporteDaoImpl;
import nomina.idao.IEmpleadoDao;
import nomina.idao.ITablaReporteDao;
import nomina.model.Empleado;
import nomina.model.TablaReporte;

public class Demo {

	public static void main(String[] args) throws Exception {
		
		//IEmpleadoDao em = new EmpleadoDaoImpl();
		
		
		
		//System.out.println(em.leerEmpleado("5").toString());
		
		//em.crearEmpleado(new Empleado("222", "rodrigo", "serDelicioso", 3000));
		
		/*
		Empleado e1 = new Empleado("222", "rodrigo", "serPuto", 3000);
		
		
		em.actualizarEmpleado(e1);
		*/
		//em.borrarEmpleado("222");
		/*
		for(Empleado e : em.obtenerEmpleados()) {
			System.out.println(e.toString());
		}
		*/
		
		
		
		ITablaReporteDao tb = new TablaReporteDaoImpl();
		
		for(TablaReporte t : tb.obtenerTablaReporte()) {
			System.out.println(t.toString());
		}
	}

}
