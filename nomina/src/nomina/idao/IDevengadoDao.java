package nomina.idao;

import java.util.List;

import nomina.model.Devengado;

public interface IDevengadoDao {

	public void crearDevengado(Devengado devengado) throws Exception;

	public Devengado leerDevengado(String identificacion) throws Exception;

	public void actualizarDevengado(Devengado devengado) throws Exception;

	public void borrarDevengado(String identificacion) throws Exception;

	public List<Devengado> obtenerDevengados() throws Exception;
}
