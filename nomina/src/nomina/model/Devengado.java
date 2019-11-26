package nomina.model;

public class Devengado {
	private String identificacionEmpleado;
	private double auxilioTransporte;
	private double horasExtra;
	private double bonificaciones;
	private double comisiones;

	public Devengado(Empleado empleado, double horasExtra, double bonificaciones, double comisiones) {
		super();
		this.identificacionEmpleado = empleado.getIdentificacion();
		if (empleado.getSueldoBasico() <= 2 * 828116) {
			this.auxilioTransporte = 97032;
		} else {
			this.auxilioTransporte = 0;
		}
		this.horasExtra = horasExtra;
		this.bonificaciones = bonificaciones;
		this.comisiones = comisiones;
	}

	public Devengado(String identificacionEmpleado, double auxilioTransporte, double horasExtra, double bonificaciones,
			double comisiones) {
		super();
		this.identificacionEmpleado = identificacionEmpleado;
		this.auxilioTransporte = auxilioTransporte;
		this.horasExtra = horasExtra;
		this.bonificaciones = bonificaciones;
		this.comisiones = comisiones;
	}



	public String getIdentificacionEmpleado() {
		return identificacionEmpleado;
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

	public void setIdentificacionEmpleado(String identificacionEmpleado) {
		this.identificacionEmpleado = identificacionEmpleado;
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

}
