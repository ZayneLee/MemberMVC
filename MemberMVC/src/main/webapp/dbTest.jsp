<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.naming.*, javax.sql.*, java.sql.*,  java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try {
    Context ctx = new InitialContext();
    DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/pool");
    try (Connection con = ds.getConnection();
         PreparedStatement ps = con.prepareStatement("SELECT 1 FROM dual");
         ResultSet rs = ps.executeQuery()) {

        if (rs.next() && rs.getInt(1) == 1) {
            out.println("DB 연결 성공! 👍  (" + con.getMetaData().getURL() + ")");
        }
    }
} catch (Exception e) {
    e.printStackTrace(new PrintWriter(out));
}
%>

</body>
</html>