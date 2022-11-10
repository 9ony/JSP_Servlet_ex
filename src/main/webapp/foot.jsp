<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String myctx=request.getContextPath(); //myctx에 context경로 저장
%>
</article>
        <!-- 사이드 영역 ------------------------------- -->
        <aside>
            <!-- 사이드 -->
            <nav>
                <ul>
                    <li><a href="<%=myctx%>/example/ex06.jsp">성적입력</a></li>
                    <li><a href="<%=myctx%>/login/sessionTest.jsp">Session</a></li>
                    <li><a href="<%=myctx%>/login/cookieTest.jsp">Cookie</a></li>
                    <li><a href="<%=myctx%>/login/myPage.jsp">MyPage</a></li>
                    <li><a onClick="history.back()" >Test</a></li>
                </ul>
            </nav>

        </aside>
        <div class="clear"></div>
        <!-- 푸터 영역---------------------------------- -->
        <footer>
            <!-- footer -->
            &copy;Copyright/회사소개
        </footer>
    </div>
        <!--div#wrap .container end  -->
</body>
</html>