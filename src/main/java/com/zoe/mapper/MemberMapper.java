package com.zoe.mapper;
 


import com.zoe.pojo.Member;
import com.zoe.util.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MemberMapper {

    public Member getMember(String member_name);

    public void findMemberByNameAndPwd(@Param("member_name")String member_name,@Param("member_password")String member_password);


    public int add(Member member);



      
    public void delete(int member_ID);

    public Member get(int member_ID);

    public Member get(String member_name);
     
      
    public int update(Member member);
       
      
    public List<Member> list();

    public List<Member> list(Page page);

    public int total();

}