<%@ page contentType="text/html; charset=UTF-8" %>
<form id="fileform" name="fileform" method="post">
	<input type="hidden" name="filename" value="<%=request.getParameter("filename")%>">
	<input type="hidden" name="path" value="<%=request.getParameter("path")%>">
	<input type="hidden" name="fcode" value="<%=request.getParameter("path")%>">
</form>
<script type="text/javascript">
	function fileAttach(){ 
		f = document.fileform;
		fpath = f.path.value;
	    fname = f.filename.value; 
	    fcode = fpath + fname;
	    
	    try{
             window.opener.pasteHTML(fname,'<%=request.getParameter("byid")%>'); 
	    	
	    	 window.close();
	    }catch(e){ 
//             alert(e); 
	    }
	}
	fileAttach();
	this.window.close();
</script>
