package nomina.idao;

import java.util.List;

import nomina.model.Empleado;

public interface IEmpleadoDao {
	
	public void crearEmpleado(Empleado empleado) throws Exception;
	public Empleado leerEmpleado(String identificacion) throws Exception;
	public void actualizarEmpleado(Empleado empleado) throws Exception;
	public void borrarEmpleado(String identificacion) throws Exception;
	public List<Empleado> obtenerEmpleados() throws Exception;
}
