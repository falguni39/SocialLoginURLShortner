package com.sloginurlshort.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sloginurlshort.database.model.MyURL;

/**
 * This controller will handle URL shorting service workflow.
 *
 */
@Controller
public class URLShortnerController {
	private static final Logger LOGGER = LoggerFactory.getLogger(URLShortnerController.class);

	@RequestMapping(value = "/shortner", method = RequestMethod.GET)
	public ModelAndView MyURL() {
		return new ModelAndView("shortner", "command", new MyURL());
	}

	@RequestMapping(value = { "/getShort" }, method = RequestMethod.POST)
	public String getShortURL(@ModelAttribute("urlForm") MyURL objmyURL, ModelMap model) {

		LOGGER.debug("longurl: {} has been entered ", objmyURL.getLongURL());
		//TODO:: Save long url to Database and get its ID
		String shortURL = this.idToTinyUrl(111);
		objmyURL.setLongURL(objmyURL.getLongURL());
		objmyURL.setShortURL(shortURL);
		model.addAttribute("longURL", objmyURL.getLongURL());
		model.addAttribute("shortURL", objmyURL.getShortURL());
		model.addAttribute("id", objmyURL.getId());

		return "result";
	}
	
	public String idToTinyUrl(int id)
	{
		String map = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder tinyUrl = new StringBuilder();
		while(id>0)
		{
			tinyUrl.append(map.charAt(id%62));
			id /= 62;
		}
		return tinyUrl.reverse().toString();
	}
 
	public int tinyUrlToId(String tinyUrl)
	{
		int id = 0;
		String map = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		for(int i=0;i<tinyUrl.length();i++)
		{
			id = (id*62) + map.indexOf(tinyUrl.charAt(i));
		}
		return id;
	}
}