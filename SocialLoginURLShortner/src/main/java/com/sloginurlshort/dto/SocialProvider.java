package com.sloginurlshort.dto;

public enum SocialProvider {

	GOOGLE("google"), NONE("local");

	private String providerType;

	public String getProviderType() {
		return providerType;
	}

	SocialProvider(final String providerType) {
		this.providerType = providerType;
	}

}
