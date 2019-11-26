package nomina.idao;

import java.util.List;

import nomina.model.Descuento;

public interface IDescuentoDao {
	

	public void crearDescuento(Descuento descuento) throws Exception;

	public Descuento leerDescuento(String identificacion) throws Exception;

	public void actualizarDescuento(Descuento descuento) throws Exception;

	public void borrarDescuento(String identificacion) throws Exception;

	public List<Descuento> obtenerDescuentos() throws Exception;
	
}
