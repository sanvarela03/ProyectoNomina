package nomina.model;

public class Empleado {
	/**
	 * Atributos
	 */
	private String identificacion;
	private String nombre;
	private String cargo;
	private double sueldoBasico;

	/**
	 * Constructores
	 */
	public Empleado() {
		
	}
	public Empleado(String identificacion, String nombre, String cargo, double sueldoBasico) {
		super();
		this.identificacion = identificacion;
		this.nombre = nombre;
		this.cargo = cargo;
		this.sueldoBasico = sueldoBasico;
	}
	
	/**
	 * Metodos
	 */
	// GETTERS
	public String getIdentificacion() {
		return identificacion;
	}

	public String getNombre() {
		return nombre;
	}

	public String getCargo() {
		return cargo;
	}

	public double getSueldoBasico() {
		return sueldoBasico;
	}

	// SETTERS
	public void setIdentificacion(String identificacion) {
		this.identificacion = identificacion;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public void setSueldoBasico(double sueldoBasico) {
		this.sueldoBasico = sueldoBasico;
	}
	
	//Metodos
	@Override
	public String toString() {
		return "Empleado [identificacion=" + identificacion + ", nombre=" + nombre + ", cargo=" + cargo
				+ ", sueldoBasico=" + sueldoBasico + "]";
	}
	
}
