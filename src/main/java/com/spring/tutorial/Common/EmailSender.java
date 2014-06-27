package com.spring.tutorial.Common;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("emailSender")
public class EmailSender {

	@Value("${EmailContactus}")
	private String contactus;
	
	

	@Value("${EmailProtocol}")
	private String protocol;
	
	private Logger logger = Logger.getLogger(EmailSender.class);
	public static String host;
	/*@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private VelocityEngine velocityEngine;*/

	static {
		// protocol=$"{mail.http.request.protocol}";
	}

	/**
	 * Sending activation mail of Client and Artiest using this method
	 * 
	 * @param email
	 * @param user
	 */

	public String getProtocol() {
		return protocol;
	}

	
	
}
