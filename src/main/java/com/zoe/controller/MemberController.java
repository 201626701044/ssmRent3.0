package com.zoe.controller;

import com.alibaba.fastjson.JSONObject;
import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import com.zoe.service.impl.MemberServiceImpl;
import com.zoe.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;

//    @RequestMapping("regist")
//    public String regist(Member member, Model model) {
//        System.out.println("用户注册：" + member.getMember_name() + member.getMember_password());
//        String member_name = member.getMember_name();
//        String member_password = member.getMember_password();
//        if (member_name != null && member_name.trim().equals("") || member_password != null && member_password.trim().equals("")) {
//            model.addAttribute("loginName", "用户名或密码为空");
//            return "regerror";
//        } else {
//            String check = null;
//            try {
//                check = memberService.getMember(member_name).getMember_name();
//                System.out.print("__________" + check);
//            } catch (Exception e) {
//
//            }
//            if (check==null) {
//                model.addAttribute("loginName", member_name);
//                System.out.println(member.toString());
//                if (memberService.regist(member) > 0)
//                    return "success";
//            }
//        }
//        model.addAttribute("loginName", member_name);
//       return "filed";
//    }
    @ResponseBody
    @RequestMapping("regist2")
    public String regist2(Member member) {
        String regFlag=null;
        String regMsg=null;
        System.out.println("用户注册：" + member.getMember_name() + member.getMember_password());
        String member_name = member.getMember_name();
        String member_password = member.getMember_password();
        if (member_name != null && member_name.trim().equals("") || member_password != null && member_password.trim().equals("")) {
            regMsg= "用户名或密码为空";
            regFlag= "isnull";
        } else {
            String check = null;
            try {
                check = memberService.getMember(member_name).getMember_name();
                System.out.print("__________" + check);
            } catch (Exception e) {

            }
            if (check==null) {
                regMsg= member_name;
                System.out.println(member.toString());
                if (memberService.regist(member) > 0)
                    regFlag= "success";
            }
            else {
                regMsg= member_name;
                regFlag= "failed";
            }
        }

        Map<String,String> map= new HashMap<String,String >();
        map.put("regMsg",regMsg);
        map.put("regFlag",regFlag);
        System.out.println(JSONObject.toJSON(map).toString());
        return  JSONObject.toJSON(map).toString();

    }

    @RequestMapping("regist")
    public String regist(Member member, Model model) {
        System.out.println("用户注册：" + member.getMember_name() + member.getMember_password());

        String check1=memberService.check(member,model);

        return check1;
    }
    @RequestMapping("login")
    public String login(String member_name,String member_password,Model model){
        System.out.println("用户登录："+member_name+member_password);
        memberService.login(member_name,member_password);
        model.addAttribute("msg","登录成功");
        return "loginsuccess";
    }




//    @ResponseBody
//    @RequestMapping("/submitMember")
//    public String submitMember(@RequestBody Member member) {
//        System.out.println("SSM接受到浏览器提交的json，并转换为Member对象:"+member);
//        return "ok";
//    }
//
//    @ResponseBody
//    @RequestMapping("/getOneMember")
//    public String getOneMember() {
//        Member c = new Member();
//        c.setMember_ID(100);
//        c.setMember_name("第100个分类");
//        JSONObject json= new JSONObject();
//        json.put("member", JSONObject.toJSON(c));
//        return json.toJSONString();
//    }
//    @ResponseBody
//    @RequestMapping("/getManyMember")
//    public String getManyMember() {
//        List<Member> cs = new ArrayList<>();
//        for (int i = 0; i < 10; i++) {
//            Member c = new Member();
//            c.setMember_ID(i);
//            c.setMember_name("分类名称:"+i);
//            cs.add(c);
//        }
//
//        return JSONObject.toJSON(cs).toString();
//    }
//
////	@Autowired
////    MemberService memberService;
//
//	@RequestMapping("listMember")
//	public ModelAndView listMember(Page page){
//		ModelAndView mav = new ModelAndView();
//		//PageHelper.offsetPage(page.getStart(),5);
//		List<Member> cs= memberService.list(page);
//		//int total = (int) new PageInfo<>(cs).getTotal();
//		int total = memberService.total();
//
//		page.caculateLast(total);
//
//		// 放入转发参数
//		mav.addObject("cs", cs);
//		// 放入jsp路径
//		mav.setViewName("listMember");
//		return mav;
//	}
//
//    @RequestMapping("addMember")
//    public ModelAndView addMember(Member member){
//        memberService.add(member);
//        ModelAndView mav = new ModelAndView("redirect:/listMember");
//        return mav;
//    }
//    @RequestMapping("deleteMember")
//    public ModelAndView deleteMember(Member member){
//        memberService.delete(member);
//        ModelAndView mav = new ModelAndView("redirect:/listMember");
//        return mav;
//    }
//    @RequestMapping("editMember")
//    public ModelAndView editMember(Member member){
//        Member c= memberService.get(member.getMember_ID());
//        ModelAndView mav = new ModelAndView("editMember");
//        mav.addObject("c", c);
//        return mav;
//    }
//    @RequestMapping("updateMember")
//    public ModelAndView updateMember(Member member){
//        memberService.update(member);
//        ModelAndView mav = new ModelAndView("redirect:/listMember");
//        return mav;
//    }
//

}
