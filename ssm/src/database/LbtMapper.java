package database;

import java.util.List;

import Bean.Lbt;
import util.Lbtutil;

public interface LbtMapper {
	public List<Lbt> sellbt();
	public void insertlbt(Lbt lbt);
	public void dellbt(Lbt lbt);
	public void updatelbt(Lbtutil lbt);
	public Lbt sellbtbyid(int id);

}
