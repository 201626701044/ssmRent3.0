package com.zoe.service;



import com.zoe.pojo.Member;
import com.zoe.util.Page;
import org.springframework.ui.Model;

import java.util.List;


public interface MemberService {

	public int regist(Member member);
    public Member getMember(String member_name);
	public void login(String member_name,String member_password);

	public String check(Member member, Model model);




	public boolean addMember(Member member);

	public void add(Member c);


	List<Member> list();
	int total();
	List<Member> list(Page page);

	void update(Member c);
	void delete(Member c);
	Member get(int member_ID);


}
