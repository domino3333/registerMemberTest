package com.example.registerspringtest.repository;


import com.example.registerspringtest.domain.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

@Repository
public class MemberDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    public int insertMember(Member member) {

        String query = "insert into registerMember values(registerMember_seq.nextval,?,?,?)";
        int count = jdbcTemplate.update(query,member.getName(),member.getPassword(),member.getAge());

        return count;

    }

    public List<Member> memberList() {
        String query ="select * from registerMember order by no";

        List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
            @Override
            public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                Member member = new Member();
                member.setNo(rs.getInt("no"));
                member.setName(rs.getString("name"));
                member.setPassword(rs.getString("password"));
                member.setAge(rs.getInt("age"));


                return member;
            }
        });



        return memberList;
    }

    public Member selectByNo(int no) {
        String query = "select * from registerMember where no = ?";

        List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
            @Override
            public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                Member member = new Member();
                member.setNo(rs.getInt("no"));
                member.setName(rs.getString("name"));
                member.setPassword(rs.getString("password"));
                member.setAge(rs.getInt("age"));


                return member;
            }
        },no);

        return memberList.get(0);
    }

    public int updateMember(Member member) {
        String query = "update registermember set name=?, password =?,age=? where no =?";
        int count = jdbcTemplate.update(query,member.getName(),member.getPassword(),member.getAge(),member.getNo());

        return count;
    }

    public int deleteMember(Member member) {
        String query = "delete from registerMember where no = ?";
        int count = jdbcTemplate.update(query,member.getNo());
        return count;
    }

    public List<Member> searchMember(String type, String keyword) {
//        select * from registerMember where name like '%김%';
//        select * from registerMember where  password like '%f%';
//        select * from registerMember where age = 20;
        List<String> searchList = Arrays.asList("name","age");
        if(!searchList.contains(type)){
            type = "name";
        }
        String query = "select * from registerMember where "+type+" like '%"+keyword+"%'";
        List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
            @Override
            public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                Member member = new Member();
                member.setNo(rs.getInt("no"));
                member.setName(rs.getString("name"));
                member.setPassword(rs.getString("password"));
                member.setAge(rs.getInt("age"));


                return member;
            }
        });

        return memberList;

    }
}
