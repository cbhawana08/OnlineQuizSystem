<%-- 
    Document   : bar
    Created on : 14th February, 2020, 7:00:54 PM
    Author     : BHAWANA
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
                <div style="float: left; width: 580px; margin: 8px 0px 5px 200px; font-size: 20px;"><marquee behavior="alternate"  direction="left" style="text-align:center;color:red;">WELCOME!!!</marquee></div>
                <%
                    String admin=(String) session.getAttribute("admin");
                    String user=(String) session.getAttribute("user");
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bhawna","root","root");
                        st=con.createStatement();
                        if(admin!=null)
                        {
                            String query="select * from admin where uname='"+admin+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                %>
                                <div  style=" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;"><p>Welcome <%=name %></p></div>
                                <%    
                            }
                        }
                        if(user!=null)
                        {
                            String query="select * from user where rollno='"+user+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                %>
                                <div style=" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;"><p>Welcome <%=name %></p></div>
                                <%    
                            }
                        }
                        
                    }
                    catch(Exception e)
                        {
                            out.println("Error="+e);
                        }
                     %>
                </div>
    </body>
</html>
