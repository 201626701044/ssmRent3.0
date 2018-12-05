package com.zoe.service.impl;

import com.zoe.mapper.MemberMapper;
import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import com.zoe.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;


@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberMapper memberMapper;

	@Override
	public int regist(Member member) {
		Member regMem=null;
		int flag=0;
		System.out.println(member.toString());
		flag=memberMapper.add(member);
		//if (flag==1)  regMem=memberMapper.get(member.getMember_name());
		return flag;
	}
    @Override
    public void login(String member_name, String member_password) {
        memberMapper.findMemberByNameAndPwd(member_name,member_password);
    }

	@Override
	public String check(Member member, Model model) {
		String member_name = member.getMember_name();
		String member_password = member.getMember_password();
		if (member_name != null && member_name.trim().equals("") || member_password != null && member_password.trim().equals("")) {
			model.addAttribute("loginName", "用户名或密码为空");
			return "regerror";
		} else {
			String check = null;
			try {
				check = getMember(member_name).getMember_name();
				System.out.print("__________" + check);
			} catch (Exception e) {

			}
			if (check==null) {
				model.addAttribute("loginName", member_name);
				System.out.println(member.toString());
				if (regist(member) > 0)
					return "success";
			}
		}
		model.addAttribute("loginName", member_name);
		return "failed";

	}

	@Override
	public void add(Member c) {
		memberMapper.add(c);

	}

	@Override
	public boolean addMember(Member member) {
		boolean flag=false;
		if (member==null) return false;
		else {
			memberMapper.add(member);
			flag=true;
			return flag;
		}
	}





	public List<Member> list(){
		return memberMapper.list();
	}

	@Override
	public List<Member> list(Page page) {
		// TODO Auto-generated method stub
		return memberMapper.list(page);
	}

	@Override
	public int total() {
		return memberMapper.total();
	};



	@Override
	public void update(Member c) {
		memberMapper.update(c);
	}


	@Override
	public void delete(Member c) {
		memberMapper.delete(c.getMember_ID());
	}


	@Override
	public Member get(int member_ID) {
		// TODO Auto-generated method stub)
		return memberMapper.get(member_ID);
	}



	@Override
	public Member getMember(String member_name) {
		return memberMapper.getMember(member_name);
	}

	;
}
