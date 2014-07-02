package com.spring.tutorial.Common;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.spring.tutorial.Model.User;

@Component("emailSender")
public class EmailSender {

	@Value("${EmailContactus}")
	private String contactus;
	
	

	@Value("${EmailProtocol}")
	private String protocol;
	
	private Logger logger = Logger.getLogger(EmailSender.class);
	public static String host;
	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private VelocityEngine velocityEngine;

	static {
		// protocol=$"{mail.http.request.protocol}";
	}


	public String getProtocol() {
		return protocol;
	}


	public void sendWelcomeEmail(final User user, final Email email,final HttpServletRequest request,final HttpServletResponse response1) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				Map<String, Object> model = new HashMap<String, Object>();
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage,true);
				model.put("home", host);
				model.put("user",user);
				message.setTo(email.getMailto());
				message.setFrom(contactus);
				message.setSubject("Welcome to Tutorial Portal");
				String body = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine,"welcomeUser.vm", "UTF-8", model);
				
				message.setText(body, true);
			}
		};
		mailSender.send(preparator);
		System.out.println("welcome email sent successfully");
	}

	
	
}
