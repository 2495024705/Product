package com.rain.domain;

public class Select {
private Integer id;
private String eyeNumber;
public Select(Integer i, String s) {
this.id=i;
this.eyeNumber=s;
}
public Select() {

}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getEyeNumber() {
	return eyeNumber;
}
public void setEyeNumber(String eyeNumber) {
	this.eyeNumber = eyeNumber;
}
}
