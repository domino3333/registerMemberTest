package com.example.registerspringtest.service;

import com.example.registerspringtest.domain.Member;
import com.example.registerspringtest.repository.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberDAO memberDAO;


    @Override
    public int insertMember(Member member) throws Exception {

        return memberDAO.insertMember(member);
    }

    @Override
    public Member selectByNo(int no) throws Exception {

        return memberDAO.selectByNo(no);
    }

    @Override
    public int updateMember(Member member) throws Exception {
        return memberDAO.updateMember(member);
    }

    @Override
    public int deleteMember(Member member) throws Exception {

        return memberDAO.deleteMember(member);
    }

    @Override
    public List<Member> memberList() throws Exception {

        return memberDAO.memberList();
    }

    public List<Member> searchMember(String type,String keyword) {

        return memberDAO.searchMember(type,keyword);

    }
}
