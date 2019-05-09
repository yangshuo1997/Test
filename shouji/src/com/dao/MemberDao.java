

package com.dao;

import com.domain.MemberForm;
import com.tool.JDBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MemberDao
{

    private Connection connection;
    private PreparedStatement ps;
    private JDBConnection jdbc;

    public MemberDao()
    {
        connection = null;
        ps = null;
        jdbc = null;
        jdbc = new JDBConnection();
        connection = jdbc.connection;
    }

    public boolean updatePassword(String password, Integer id)
    {
        try {
    	ps = connection.prepareStatement("update tb_member set password=? where id=?");
        ps.setString(1, password);
        ps.setInt(2, id.intValue());
        ps.executeUpdate();
        ps.close();
        return true;
        }
        catch(SQLException ex)
        {
                return false;
    }
    }
    

    public MemberForm selectFind(String name, String result)
    {
        MemberForm member = null;
        try
        {
            ps = connection.prepareStatement("select * from tb_member where name=? and result=?");
            ps.setString(1, name);
            ps.setString(2, result);
            for(ResultSet rs = ps.executeQuery(); rs.next(); member.setResult(rs.getString(9)))
            {
                member = new MemberForm();
                member.setId(Integer.valueOf(rs.getString(1)));
                member.setName(rs.getString(2));
                member.setPassword(rs.getString(3));
                member.setReallyName(rs.getString(4));
                member.setAge(Integer.valueOf(rs.getString(5)));
                member.setProfession(rs.getString(6));
                member.setEmail(rs.getString(7));
                member.setQuestion(rs.getString(8));
            }

        }
        catch(SQLException ex) { }
        return member;
    }

    public MemberForm selectMemberForm(String name)
    {
        MemberForm member = null;
        try
        {
            ps = connection.prepareStatement("select * from tb_member where name=?");
            ps.setString(1, name);
            for(ResultSet rs = ps.executeQuery(); rs.next(); member.setResult(rs.getString(9)))
            {
                member = new MemberForm();
                member.setId(Integer.valueOf(rs.getString(1)));
                member.setName(rs.getString(2));
                member.setPassword(rs.getString(3));
                member.setReallyName(rs.getString(4));
                member.setAge(Integer.valueOf(rs.getString(5)));
                member.setProfession(rs.getString(6));
                member.setEmail(rs.getString(7));
                member.setQuestion(rs.getString(8));
            }

        }
        catch(SQLException ex) { }
        return member;
    }

    public boolean deleteMember(Integer id)
    {
       try{
    	ps = connection.prepareStatement("delete from tb_member where id=?");
        ps.setString(1, id.toString());
        ps.executeUpdate();
        ps.close();
        return true;
        }
       catch(SQLException ex)
        {
        
        return false;
        }
    }

    public void insertMember(MemberForm form)
    {
        try
        {
            ps = connection.prepareStatement("insert into tb_member values (?,?,?,?,?,?,?,?)");
            ps.setString(1, form.getName());
            ps.setString(2, form.getPassword());
            ps.setString(3, form.getReallyName());
            ps.setString(4, form.getAge().toString());
            ps.setString(5, form.getProfession());
            ps.setString(6, form.getEmail());
            ps.setString(7, form.getQuestion());
            ps.setString(8, form.getResult());
            ps.executeUpdate();
            ps.close();
        }
        catch(SQLException ex) { }
    }

    public void updateMember(MemberForm form)
    {
        try
        {
            ps = connection.prepareStatement("update tb_member set name=?,password=?,reallyName=?,age=?,profession=?,email=?,question=?,result=? where id=?");
            ps.setString(1, form.getName());
            ps.setString(2, form.getPassword());
            ps.setString(3, form.getReallyName());
            ps.setString(4, form.getAge().toString());
            ps.setString(5, form.getProfession());
            ps.setString(6, form.getEmail());
            ps.setString(7, form.getQuestion());
            ps.setString(8, form.getResult());
            ps.setString(9, form.getId().toString());
            ps.executeUpdate();
            ps.close();
        }
        catch(SQLException ex) { }
    }

    public String selectPassword(String name)
    {
        String password = "";
        try
        {
            ps = connection.prepareStatement("select * from tb_member where name=?");
            ps.setString(1, name);
            for(ResultSet rs = ps.executeQuery(); rs.next();)
                password = rs.getString("password");

        }
        catch(SQLException ex) { }
        return password;
    }

    public List selectMember()
    {
        List list = new ArrayList();
        MemberForm member = null;
        try
        {
            ps = connection.prepareStatement("select * from tb_member order by id DESC");
            for(ResultSet rs = ps.executeQuery(); rs.next(); list.add(member))
            {
                member = new MemberForm();
                member.setId(Integer.valueOf(rs.getString(1)));
                member.setName(rs.getString(2));
                member.setPassword(rs.getString(3));
                member.setReallyName(rs.getString(4));
                member.setAge(Integer.valueOf(rs.getString(5)));
                member.setProfession(rs.getString(6));
                member.setEmail(rs.getString(7));
                member.setQuestion(rs.getString(8));
                member.setResult(rs.getString(9));
            }

        }
        catch(SQLException ex) { }
        return list;
    }

    public MemberForm selectOneMember(Integer id)
    {
        MemberForm member = null;
        try
        {
            ps = connection.prepareStatement("select * from tb_member where id=?");
            ps.setInt(1, id.intValue());
            for(ResultSet rs = ps.executeQuery(); rs.next(); member.setResult(rs.getString(9)))
            {
                member = new MemberForm();
                member.setId(Integer.valueOf(rs.getString(1)));
                member.setName(rs.getString(2));
                member.setPassword(rs.getString(3));
                member.setReallyName(rs.getString(4));
                member.setAge(Integer.valueOf(rs.getString(5)));
                member.setProfession(rs.getString(6));
                member.setEmail(rs.getString(7));
                member.setQuestion(rs.getString(8));
            }

        }
        catch(SQLException ex) { }
        return member;
    }
}
