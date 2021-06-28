<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="../include/head.jsp" %>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>


<body class="nav-md">

	<div class="container body">


		<div class="main_container">
			
			<div class="col-md-3 left_col">
				<%@ include file="../include/sidebar.jsp" %>
			</div>
			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="../include/top.jsp" %>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-wrap page-list" data-menu="mgmt|company|sort">
					<div class="page-title">
						<div class="title_left">
							<h3>프론트 노출순서 <small></small></h3>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<form id="write" action="/mgmt/company/sortProc.do" method="post" encType="multipart/form-data">
								<div class="x_title">
									<h2>사업분야 선택<small></small></h2>
									<div class="clearfix"></div>
									
									<div class="checkboxes">
										<c:forEach var="entry" items="${sections_list}" varStatus="status">
										<label class="radio-inline">
											<input type="radio" name="SECTIONS" id="${entry.key}" value="${entry.key}" ${entry.key==SECTIONS?'checked':''}> ${entry.value}
										</label>
										</c:forEach>
									</div>
								</div>
								<div class="x_content  table-responsive">
									
									<ul class="list-group" id="sortable">
										<c:forEach items="${list }" var="row">
										<li class="list-group-item ui-state-default list-group-item-action">
											<i class="fa fa-list mr-3"></i>
											<input type="hidden" name="ids" value="${row.IDX }">
											<input type="hidden" name="sort" value="${row.SORT }">
											${row.NAME }
											<c:if test="${not empty row.NAME_SUB}">
											- ${row.NAME_SUB }
											</c:if>
										</li>
										</c:forEach>
									</ul>
									<div class="list-btns">
										<button type="button" class="btn btn-default" id="sort-up">위</button>
										<button type="button" class="btn btn-default" id="sort-down">아래</button>
										<button type="button" class="btn btn-default" id="sort-top">맨위</button>
										<button type="button" class="btn btn-default" id="sort-bottom">맨아래</button>
										<button type="submit" class="btn btn-primary" onclick="if(confirm('저장하시겠습니까?')){return true;}else{return false;}">저장</button>
									</div>
								</div>
								</form>
					        </div>
					    </div>
					</div>
				</div>
                <!-- footer content -->
                <%@ include file="../include/footer.jsp" %>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>
    <%@ include file="../include/script.jsp" %>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
	<form id="commonForm" name="commonForm" method="get"></form>
	<script>
	(function($){
		$('[name="SECTIONS"]').click(function(){
			window.location.href="sort.do?SECTIONS="+$(this).val();
		});
	    $( "#sortable" ).sortable({
	      placeholder: "ui-state-highlight"
	    });
	    $( "#sortable" ).disableSelection();
	    
	    $("#sortable li").on('click',function(){
	    	if($(this).hasClass('active')){
	    		$("#sortable li").removeClass('active');
	    	}else{
		    	$("#sortable li").removeClass('active');
		    	$(this).addClass('active');
	    	}
	    });

	    $('#sort-up').on('click',function(){
	    	if($("#sortable li.active")){
	    		var ele = $("#sortable li.active");
	    		ele.prev().insertAfter(ele);	
	    	}
	    });
	    $('#sort-down').on('click',function(){
	    	if($("#sortable li.active")){
	    		var ele = $("#sortable li.active");
	    		ele.next().insertBefore(ele);	
	    	}
	    });
	    $('#sort-top').on('click',function(){
	    	if($("#sortable li.active")){
	    		var ele = $("#sortable li.active");
	    		ele.insertBefore($("#sortable li").first());
	    	}
	    });
	    $('#sort-bottom').on('click',function(){
	    	if($("#sortable li.active")){
	    		var ele = $("#sortable li.active");
	    		ele.insertAfter($("#sortable li").last());
	    	}
	    });
	})(jQuery);

	</script>
</body>

</html>