package com.clickmyjobs.portal.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.clickmyjobs.portal.persist.entity.EmployersJobDetails;
import com.clickmyjobs.portal.persist.entity.JobTags;
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.service.EmloyersService;
import com.clickmyjobs.portal.service.dto.AddJobDto;
import com.clickmyjobs.portal.utils.DateUtil;



@Controller
public class EmployersController {

	
	 private static final Logger logger = LoggerFactory.getLogger(EmployersController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	    @Autowired
	    private EmloyersService emloyersService;

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/addjobs.do", method = RequestMethod.GET)
	    public ModelAndView addJobs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("post-job");
	    }

	    @RequestMapping(value = "/managejobs.do", method = RequestMethod.GET)
	    public ModelAndView manageJobs(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
	    	if(session.getAttribute("userObject")!=null){
	    		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    		 if(userProfile.getUserType().equalsIgnoreCase("EMP")){
	    			ModelAndView responseObj =new ModelAndView("manage-jobs");
					responseObj.addObject("userType", "EMP");
					return responseObj;
				}
	    	}else{
	    		return new ModelAndView("redirect:my-account.do");
	    	}
	        
	    	return new ModelAndView("redirect:index.do");
	        
	    }
	    
	    @RequestMapping(value = "/manageapplications.do", method = RequestMethod.GET)
	    public ModelAndView manageApplications() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-applications");
	    }

	    @RequestMapping(value = "/browseresumes.do", method = RequestMethod.GET)
	    public ModelAndView browseResumes() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("browse-resumes");
	    }
	    
	    @RequestMapping(value = "/empaddjobs.do", method = RequestMethod.GET)
	    public ModelAndView EployerAddJobs(AddJobDto addJobDto) {
	    	System.out.println("addResume homeee##########");
	        return new ModelAndView("employer-add-job");
	    }
	    
	    @RequestMapping(value = "/empaddjobs.do", method = RequestMethod.POST)
	    public ModelAndView EmployerAddJob(@ModelAttribute("addJobDto")AddJobDto addJobDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	System.out.println("addResume homeee##########");
	    	Set<JobTags> jobtag=new HashSet<JobTags>();
	    	 if (result.hasErrors()) {
	    		 ModelAndView res =new ModelAndView("employer-add-job");
	    		// res.addObject("errors","profileError");
	          	return res;
	    		 
	    	 }else{
	    		 String jobTags=addJobDto.getTags();
	    		 
	    		 MultipartFile multipartFile = addJobDto.getFile();
	    		 if(jobTags!=null){
	    			 String[] parts = jobTags.split(",");
	    			 for (String s: parts) {           
	    				 JobTags tag= new JobTags();
	    				 tag.setJob_tag_name(s);
	    				 jobtag.add(tag);
	    			        
	    			    }
	    			 
	    		 }
	    		 
	    		 UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    		 
	    		 EmployersJobDetails employersJobDetails = mapper.map(addJobDto, EmployersJobDetails.class);
	    		 
	    		
	    		 try {
					employersJobDetails.setJd_file(multipartFile.getBytes());
					employersJobDetails.setJob_tags(jobtag);
					employersJobDetails.setUserId(userProfile.getUserId());
				} catch (IOException e) {
					e.printStackTrace();
					 logger.info("IOException===>>"+e.getMessage());
				}
	    		 employersJobDetails.setCrtTs(DateUtil.convertDate2SqlTimeStamp(new Date()));
	    		 EmployersJobDetails obj= emloyersService.saveJobDetails(employersJobDetails);
	    		 
	    		 //FileCopyUtils.copy(fileBucket.getFile().getBytes(), new File(UPLOAD_LOCATION + fileBucket.getFile().getOriginalFilename()));
	 			//String fileName = multipartFile.getOriginalFilename();
	 			
	    		 
	    		 
	    	 }
	        logger.debug("redirect to success page");
	        return new ModelAndView("employer-add-job");
	    }
	    
	    
	    @RequestMapping(value = "/empapplications.do", method = RequestMethod.GET)
	    public ModelAndView empApplications() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("emp-applications");
	    }
	    
	    @RequestMapping(value = "/empdashboard.do", method = RequestMethod.GET)
	    public ModelAndView dashboard() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("employer-profile");
	    } 
	    
	    @RequestMapping(value = "/price.do", method = RequestMethod.GET)
	    public ModelAndView pricing() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        
	        ModelAndView response =new ModelAndView("pricing");
	        response.addObject("userType","EMP");
	        return response;
	        
	       
	    }
	    
	    
	    @RequestMapping(value = "/offers.do", method = RequestMethod.GET)
	    public ModelAndView offers() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        
	        ModelAndView response =new ModelAndView("offers");
	        response.addObject("userType","EMP");
	        return response;
	        
	       
	    } 
	    
}
