<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
            <title>Insert title here</title>
        </head>
        <body>
            <% String name = request.getParameter("username");
             String birth = request.getParameter("birthday");
             String sex[] = request.getParameterValues("sex");
             String hobby[] = request.getParameterValues("hobby");
             String dropdown = request.getParameter("dropdown");
             String selAry[] = request.getParameterValues("lbxBook");
             String intro =request.getParameter("note");
            %>

            <center>

            <table border="1" cellpadding="0" cellspacing="0" width="60%" bordercolor="black" >

            <tr align="center">
            <td>姓名</td><td>生日</td><td>系級</td><td>性別</td><td>興趣</td><td>欲訂購的書</td><td>自我介紹</td>
            </tr>
            <tr align="center">
            <td><font color="red"><%if(name==""){out.println("未輸入姓名");}%></font><%= name%></td>
            <td><font color="red"><%if(birth==""){out.println("未輸入生日");}%></font><%= birth%></td>
            <td><%= dropdown%></td>

        <td>
    <%
    for(int m = 0; m < sex.length; m++){
     if (sex[m].equals("male"))
       out.println("男");
     else if (sex[m].equals("female"))
       out.println("女");
     else if (sex[m].equals("other"))
       out.println("其他");
     else
         out.println("未選擇性別");    } %>

     </td>

    <td>
      <font color="red">
      <%
      if(hobby==null) {out.println("未選擇興趣");}
      else{  %></font>
      <%for(int n = 0; n < hobby.length; n++){
        if (hobby[n].equals("swimming"))
          out.println("游泳");
        else if (hobby[n].equals("basketball"))
          out.println("籃球");
        else if (hobby[n].equals("baseball"))
          out.println("棒球");

        } }%>
      </td>
    <td>

      <font color="red">
      <%
      if(selAry==null) {out.println("未選擇欲訂購的書");}
      else{  %></font>

    <%for(int i = 0; i < selAry.length; i++){%>
    <font color="brown">
    <%
     if (selAry[i].equals("A9073"))
       out.println("Access 2000 徹底研究");
     else if (selAry[i].equals("A9193"))
       out.println("Access 2000 程式設計");
     else if (selAry[i].equals("A0053"))
       out.println("Access 2000 網路應用");
     else if (selAry[i].equals("P9067"))
       out.println("Visual C++ 入門進階");
     else if (selAry[i].equals("P9127"))
       out.println("精通視窗程式設計");
      %>
    </font>
    <font color='blue'>
     <%= selAry[i] %></br>
   </font>
     <%
   }} %>
 </td>
   <td><font color="red"><%if(intro ==""){out.println("未輸入自我介紹");}%></font> <%= intro %></td>

 </tr>

</center>
        </body>
    </html>
