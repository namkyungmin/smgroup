<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>


<c:choose>
	<c:when test="${fn:length(list)>0}">
		<c:forEach items="${list }" var="row">
		<li class="active">
			<a href="javascript:void(0);" onclick="fn_openBoardDetail(this);" data-slug="responsibility" data-viewclick="${row.IDX }">
				<div class="txt_area">
					<p class="tit">${row.TITLE } </p>
					<div class="bottom">
						<span class="cate">${row.SECTION }</span><!--<span class="date">${fn:replace(fn:substring(row.UPDA_DTM,0,10),'-','.')}</span>-->
					</div>
				</div>
			</a>
		</li>
		</c:forEach>
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>