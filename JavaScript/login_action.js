console.log(<%=nameList%>)

if (<%=nameList%>.length === 0) {
  alert("로그인 실패\nid나 pw를 확인해주세요")
  location.href = "index.html"
} else {
    location.href = "main.jsp"
}