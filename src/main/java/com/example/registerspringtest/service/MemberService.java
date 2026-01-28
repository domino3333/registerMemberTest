package com.example.registerspringtest.service;


import com.example.registerspringtest.domain.Member;

import java.util.List;

interface MemberService {
    int insertMember(Member member) throws Exception;

    Member selectByNo(int no) throws Exception;

    int updateMember(Member member) throws Exception;

    int deleteMember(Member member) throws Exception;

    List<Member> memberList() throws Exception;

}
