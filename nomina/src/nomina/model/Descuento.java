package nomina.model;

public class Descuento {
	private String identificacionEmpleado;
	private double salud;
	private double pension;
	private double prestamos;
	private double embargos;
	private double fondoEmpleados;

	public Descuento(Empleado empleado, Devengado devengado, double prestamos, double embargos, double fondoEmpleados) {

		double salario = devengado.getComisiones() + devengado.getHorasExtra() + empleado.getSueldoBasico();

		this.identificacionEmpleado = empleado.getIdentificacion();
		this.salud = salario * 0.04;
		this.pension = salario * 0.04;
		this.prestamos = prestamos;
		this.embargos = embargos;
		this.fondoEmpleados = fondoEmpleados;

	}

	public Descuento(Empleado empleado, Devengado devengado) {

		double salario = devengado.getComisiones() + devengado.getHorasExtra() + empleado.getSueldoBasico();

		this.identificacionEmpleado = empleado.getIdentificacion();
		this.salud = salario * 0.04;
		this.pension = salario * 0.04;
	}

	public String getIdentificacionEmpleado() {
		return identificacionEmpleado;
	}

	public double getSalud() {
		return salud;
	}

	public double getPension() {
		return pension;
	}

	public double getPrestamos() {
		return prestamos;
	}

	public double getEmbargos() {
		return embargos;
	}

	public double getFondoEmpleados() {
		return fondoEmpleados;
	}

	public void setIdentificacionEmpleado(String identificacionEmpleado) {
		this.identificacionEmpleado = identificacionEmpleado;
	}

	public void setSalud(double salud) {
		this.salud = salud;
	}

	public void setPension(double pension) {
		this.pension = pension;
	}

	public void setPrestamos(double prestamos) {
		this.prestamos = prestamos;
	}

	public void setEmbargos(double embargos) {
		this.embargos = embargos;
	}

	public void setFondoEmpleados(double fondoEmpleados) {
		this.fondoEmpleados = fondoEmpleados;
	}

}
