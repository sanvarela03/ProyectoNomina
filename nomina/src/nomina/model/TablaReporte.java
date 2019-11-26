package nomina.model;

public class TablaReporte {

	String nombreEmpleado;
	double sueldoBasico;
	double auxilioTransporte;
	double horasExtra;
	double bonificaciones;
	double comisiones;
	double salud;
	double pension;
	double prestamos;
	double embargos;
	double fondoEmpleados;

	public TablaReporte(String nombreEmpleado, double sueldoBasico, double auxilioTransporte, double horasExtra,
			double bonificaciones, double comisiones, double salud, double pension, double prestamos, double embargos,
			double fondoEmpleados) {
		super();
		this.nombreEmpleado = nombreEmpleado;
		this.sueldoBasico = sueldoBasico;
		this.auxilioTransporte = auxilioTransporte;
		this.horasExtra = horasExtra;
		this.bonificaciones = bonificaciones;
		this.comisiones = comisiones;
		this.salud = salud;
		this.pension = pension;
		this.prestamos = prestamos;
		this.embargos = embargos;
		this.fondoEmpleados = fondoEmpleados;
	}

	public double getSueldoBasico() {
		return sueldoBasico;
	}

	public double getAuxilioTransporte() {
		return auxilioTransporte;
	}

	public double getHorasExtra() {
		return horasExtra;
	}

	public double getBonificaciones() {
		return bonificaciones;
	}

	public double getComisiones() {
		return comisiones;
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

	public void setSueldoBasico(double sueldoBasico) {
		this.sueldoBasico = sueldoBasico;
	}

	public void setAuxilioTransporte(double auxilioTransporte) {
		this.auxilioTransporte = auxilioTransporte;
	}

	public void setHorasExtra(double horasExtra) {
		this.horasExtra = horasExtra;
	}

	public void setBonificaciones(double bonificaciones) {
		this.bonificaciones = bonificaciones;
	}

	public void setComisiones(double comisiones) {
		this.comisiones = comisiones;
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

	public String getNombreEmpleado() {
		return nombreEmpleado;
	}

	public void setNombreEmpleado(String nombreEmpleado) {
		this.nombreEmpleado = nombreEmpleado;
	}

}
