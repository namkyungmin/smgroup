<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<%
String LANG="KR";
if(request.getParameter("LANG")!=null){
	LANG=request.getParameter("LANG");
}
String NUM="1";
if(request.getParameter("NUM")!=null){
	NUM=request.getParameter("NUM");
}
%>
<div class="contents-inner-line">
	<h4 class="x_title_sub pb-2"><%=NUM%> 번 컨텐츠</h4>
	<div class="form-group">
		<label for="DESCRIPTION">웹 이미지</label>
		<div class="file_panel">
			<div class="add_img_area">
				<ul class="file_area" data-group="file">
					<li class="item-file">
						<%if(request.getParameter("CON_IMAGE")!=null){ %>
							<div class="upload-display"><a href="<%=request.getParameter("CON_IMAGE_FULL")==null?"":request.getParameter("CON_IMAGE_FULL")%>" class="upload-thumb-wrap imgpopup"><img src="<%=request.getParameter("CON_IMAGE_FULL")==null?"":request.getParameter("CON_IMAGE_FULL")%>" class="upload-thumb"></a></div>
						<%} %>
						<div class="input-group">
							<span class="input-group-btn hidden">
								<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
							</span>
							<input type="hidden" name="<%=LANG %>_OLD_CON_IMAGE_<%=NUM%>" value="<%=request.getParameter("CON_IMAGE")==null?"":request.getParameter("CON_IMAGE")%>" >
							<input type="file" name="<%=LANG %>_CON_IMAGE_<%=NUM%>" id="<%=LANG %>_CON_IMAGE_<%=NUM%>" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
							<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
							<span class="input-group-btn">
								<label for="<%=LANG %>_CON_IMAGE_<%=NUM%>" class="btn btn-dark"><i class="fa fa-upload"></i></label>
							</span>
						</div>
						<div class="input-description">
							※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="DESCRIPTION">모바일 이미지</label>
		<div class="file_panel">
			<div class="add_img_area">
				<ul class="file_area" data-group="file">
					<li class="item-file">
						<%if(request.getParameter("CON_IMAGE_MO")!=null){ %>
							<div class="upload-display"><a href="<%=request.getParameter("CON_IMAGE_MO_FULL")==null?"":request.getParameter("CON_IMAGE_MO_FULL")%>" class="upload-thumb-wrap imgpopup"><img src="<%=request.getParameter("CON_IMAGE_MO_FULL")==null?"":request.getParameter("CON_IMAGE_MO_FULL")%>" class="upload-thumb"></a></div>
						<%} %>
						<div class="input-group">
							<span class="input-group-btn hidden">
								<button type="button" class="btn btn-primary"><i class="fa fa-close"></i></button>
							</span>
							<input type="hidden" name="<%=LANG %>_OLD_CON_IMAGE_MO_<%=NUM%>" value="<%=request.getParameter("CON_IMAGE_MO")==null?"":request.getParameter("CON_IMAGE_MO")%>" >
							<input type="file" name="<%=LANG %>_CON_IMAGE_MO_<%=NUM%>" id="<%=LANG %>_CON_IMAGE_MO_<%=NUM%>" class="upload-hidden" accept=".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx" title="파일" data-title="파일를(을)">
							<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">
							<span class="input-group-btn">
								<label for="<%=LANG %>_CON_IMAGE_MO_<%=NUM%>" class="btn btn-dark"><i class="fa fa-upload"></i></label>
							</span>
						</div>
						<div class="input-description">
							※ 파일형식 : JPG, JPEG, GIF, PNG / 용량 : 5MB 이하
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="CON_TITLE_<%=NUM%>">타이틀</label>
		<input type="text" name="<%=LANG %>_CON_TITLE_<%=NUM%>" class="form-control" maxlength="100" title="타이틀" data-title="타이틀을" value="<%=request.getParameter("CON_TITLE")==null?"":request.getParameter("CON_TITLE")%>">
	</div>
	<div class="form-group">
		<label for="CON_BODY_<%=NUM%>">내용</label>
		<textarea id="CON_BODY_<%=NUM%>" name="<%=LANG %>_CON_BODY_<%=NUM%>" title="내용" data-title="내용을" class="form-control texteditor" style="resize: none; height: 150px;"><%=request.getParameter("CON_BODY")==null?"":request.getParameter("CON_BODY")%></textarea>
	</div>
</div>