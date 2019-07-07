package com.rain.domain;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;

@Table(name = "optometrymessage_info")
public class OptometrymessageInfo {
	@Id
	@KeySql(useGeneratedKeys = true)
	private Integer id;
	@Column(name = "ygNum")
	private String ygnum;
	@Column(name = "sMirron")
	private String smirron;

	private String ast;
	@Column(name = "aPosition")
	private String aposition;
	@Column(name = "pDistance")
	private String pdistance;

	private String optometrist;

	private String operation;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getYgnum() {
		return ygnum;
	}

	public void setYgnum(String ygnum) {
		this.ygnum = ygnum == null ? null : ygnum.trim();
	}

	public String getSmirron() {
		return smirron;
	}

	public void setSmirron(String smirron) {
		this.smirron = smirron == null ? null : smirron.trim();
	}

	public String getAst() {
		return ast;
	}

	public void setAst(String ast) {
		this.ast = ast;
	}

	public String getAposition() {
		return aposition;
	}

	public void setAposition(String aposition) {
		this.aposition = aposition;
	}

	public String getPdistance() {
		return pdistance;
	}

	public void setPdistance(String pdistance) {
		this.pdistance = pdistance;
	}

	public String getOptometrist() {
		return optometrist;
	}

	public void setOptometrist(String optometrist) {
		this.optometrist = optometrist == null ? null : optometrist.trim();
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation == null ? null : operation.trim();
	}
}