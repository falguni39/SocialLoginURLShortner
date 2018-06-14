package com.sloginurlshort.database.model;

/**
 * @author Falguni
 *
 */
public class MyURL {

	private Integer id;
	private String longURL;
	private String shortURL;

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public String getLongURL() {
		return longURL;
	}

	public void setLongURL(String longURL) {
		this.longURL = longURL;
	}

	public String getShortURL() {
		return shortURL;
	}

	public void setShortURL(String shortURL) {
		this.shortURL = shortURL;
	}

}
