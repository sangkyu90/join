package com.ict.erp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.JoinInfoService;
import com.ict.erp.vo.JoinInfo;

@Controller
public class JoinInfoController {

	@Autowired
	private JoinInfoService jis;
	
	//select list
	@RequestMapping(value="/infolist",method=RequestMethod.GET)
	@ResponseBody
	public List<JoinInfo> getJoinInfoList(@ModelAttribute JoinInfo ji){
	return jis.getJoinInfoList(ji);
	}
	
	//select one
	@RequestMapping(value="/infolist/{jiNum}",method=RequestMethod.GET)
	@ResponseBody
	public JoinInfo getJoinInfo(@ModelAttribute JoinInfo ji,@PathVariable Integer jiNum) {
		ji.setJiNum(jiNum);
		return jis.getJoinInfo(ji);	
	}
	
	//search
	@RequestMapping(value="/search/{jiName}",method=RequestMethod.GET)
	@ResponseBody
	public List<JoinInfo> getSearchResult(@ModelAttribute JoinInfo ji,@PathVariable String jiName) {
		ji.setJiName(jiName);
	return jis.getJoinInfoList(ji);
	}
	
	
	//update
	@RequestMapping(value="/updateinfo/{jiNum}",method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateJoinInfo(@RequestBody JoinInfo ji,@PathVariable Integer jiNum) {
		ji.setJiNum(jiNum);
		return jis.updateJoinInfo(ji);
	}
	
	//delete
	@RequestMapping(value="/deleteinfo",method=RequestMethod.DELETE)
	@ResponseBody
	public String deleteJoinInfo(@PathVariable int jiNum) {
		return jis.deleteJoinInfo(jiNum)+"";
	}
	
//	sign up&in	//
	
	//sign_up(insert)
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	@ResponseBody 
	public Integer insertJoinInfo(@RequestBody JoinInfo ji) {
		return jis.insertJoinInfo(ji);
	}
	
	//sign_in//    
    @RequestMapping(value="/loginProcess", method=RequestMethod.POST)
    public String loginProcess(HttpSession session,JoinInfo ji) {
    	String returnURL = "";
    	
    	if(session.getAttribute("login") != null) {
    		session.removeAttribute("login");
    	}
    	
    	JoinInfo jInfo = jis.getLoginInfo(ji);
    	
    	if(jInfo != null) {
    		session.setAttribute("login", jInfo);
    		returnURL = "redirect:/url/list";
    	}else {
    		returnURL = "redirect:/url/sign_in";
    	}
    	return returnURL;
    }
    
    //sign_out//
    @RequestMapping(value="/logout")
    public String logoutProcess(HttpSession session) {
    	session.invalidate();
    	return "redirect:/url/sign_in";
    }
}
