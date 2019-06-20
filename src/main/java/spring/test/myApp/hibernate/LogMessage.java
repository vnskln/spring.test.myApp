package spring.test.myApp.hibernate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="myapplogs")
public class LogMessage {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="logDate")
	private Date logDate;
	
	@Column(name="logMessage")	
	private String logMessage;
	
	public LogMessage () {
		logDate = new Date();
		logMessage = "default log";
	}

	public LogMessage(Date logDate, String logMessage) {
		this.logDate = logDate;
		this.logMessage = logMessage;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getLogDate() {
		return logDate;
	}

	public void setLogDate(Date logDate) {
		this.logDate = logDate;
	}

	public String getLogMessage() {
		return logMessage;
	}

	public void setLogMessage(String logMessage) {
		this.logMessage = logMessage;
	}

	@Override
	public String toString() {
		return "LogMessage [id=" + id + ", logDate=" + logDate + ", logMessage=" + logMessage + "]";
	}
	
	

}
