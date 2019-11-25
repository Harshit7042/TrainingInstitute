package com.keane.training.domain;

public class Response {
int iid;
int sid1;
String name;
String r;


public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public void setR(String r) {
	this.r = r;
}
public Response(String name, String r) {
	super();
	this.name = name;
	this.r = r;
}
public Response(int iid, int sid1, String response) {
	super();
	this.iid = iid;
	this.sid1 = sid1;
	this.r = r;
}
public int getIid() {
	return iid;
}
public void setIid(int iid) {
	this.iid = iid;
}
public int getSid1() {
	return sid1;
}
public void setSid1(int sid1) {
	this.sid1 = sid1;
}
public String getResponse() {
	return r;
}
public void setRes(String response) {
	this.r = response;
}

}
