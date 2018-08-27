<%@page import="java.sql.*"%>

<%String id[]= new String[10];
for(int i=0;i<10;i++){
id[i]=request.getParameter("check"+i);

}

%>
<%try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "system");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();
for(int a=0;a<10;a++){
st.executeUpdate("delete from document where id='"+id[a]+"'");
}
response.sendRedirect("index1.jsp");
}catch(SQLException e){ 
    System.out.println(e.getMessage()); 
    }
    %>