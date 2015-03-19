<%@ tag%>
<%@ attribute name="style"%>
<button type="submit" class="btn btn-${not empty style ? style : 'primary'}"><jsp:doBody/></button>