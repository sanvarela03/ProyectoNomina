package nomina.demo;

import nomina.dao.EmpleadoDaoImpl;
import nomina.idao.IEmpleadoDao;
import nomina.model.Empleado;

public class Demo {

	public static void main(String[] args) throws Exception {
		
		IEmpleadoDao em = new EmpleadoDaoImpl();
		
		//System.out.println(em.leerEmpleado("111").toString());
		
		//em.crearEmpleado(new Empleado("222", "rodrigo", "serDelicioso", 3000));
		
		em.actualizarEmpleado(new Empleado("222", "rodrigo", "serPuto", 3000));
		
		//em.borrarEmpleado("222");
		for(Empleado e : em.obtenerEmpleados()) {
			System.out.println(e.toString());
		}
	}

}
