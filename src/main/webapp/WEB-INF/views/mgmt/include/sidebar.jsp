<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
                <div class="left_col scroll-view">
					
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="/mgmt/login.do" class="site_title"><i class="fa fa-cloud"></i> <span>사이트관리자</span></a>
                    </div>
                    <div class="clearfix"></div>

                    <!-- menu prile quick info -->
                    <div class="profile">
                        <div class="profile_pic">
                            <img src="/resource/assets/images/logo.png" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>${sessionScope.admin.ADMIN_NAME}</h2>
                        </div>
						<div class="clearfix"></div>
                    </div>
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                            	<c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'1')==true||sessionScope.admin.GRANTS=='Y'}">
                                <li>
                                	<a><i class="fa fa-users"></i> 관리자<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="/mgmt/admin/list.do" data-menu="mgmt|admin">List</a></li>
                                        <li><a href="/mgmt/admin/write.do" data-menu="mgmt|admin|write">Join Us</a></li>
                                        <li><a href="/mgmt/admin/ip.do" data-menu="mgmt|admin|ip">IP 관리</a></li>
                                    </ul>
                                </li>
                                </c:if>
                            	<c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'2')==true||sessionScope.admin.GRANTS=='Y'}">
                                <li><a><i class="fa fa-table"></i> 미디어<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" id="menu-board--list">
                                        <li><a href="/mgmt/board/list.do?PID=2" data-menu="mgmt|board|pid|2">보도자료</a></li>
                                        <li><a href="/mgmt/board/list.do?PID=1" data-menu="mgmt|board|pid|1">동영상</a></li>
                                        <li><a href="/mgmt/board/list.do?PID=11" data-menu="mgmt|board|pid|11">소셜미디어</a></li>
                                    </ul>
                                </li>
                                </c:if>
                            	<c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'3')==true||sessionScope.admin.GRANTS=='Y'}">
                                <li>
                                	<a><i class="fa fa-building"></i> 사업분야 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="/mgmt/company/list.do" data-menu="mgmt|company|list">계열사 관리</a></li>
                                        <li><a href="/mgmt/company/sub_list.do" data-menu="mgmt|company|sub">서브페이지 관리</a></li>
                                        <li><a href="/mgmt/company/sort.do" data-menu="mgmt|company|sort">프론트 노출 순서</a></li>
                                    </ul>
                                </li>
                                </c:if>
                                <%-- 
                            	<c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'4')==true||sessionScope.admin.GRANTS=='Y'}">
                                <li>
                                	<a><i class="fa fa-flag"></i> 지속가능경영 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="/mgmt/board/list.do?PID=7" data-menu="mgmt|board|pid|7">게시글 관리</a></li>
                                        <li><a href="/mgmt/board/list.do?PID=8" data-menu="mgmt|board|pid|8">환경경영 인증/수상</a></li>
                                        <li><a href="/mgmt/board/list.do?PID=9" data-menu="mgmt|board|pid|9">사회공헌 소식</a></li>
                                    </ul>
                                </li>
                                </c:if> 
                                --%>
                            	<c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'5')==true||sessionScope.admin.GRANTS=='Y'}">
                                <li>
                                	<a><i class="fa fa-puzzle-piece"></i> 기타 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="/mgmt/board/list.do?PID=10" data-menu="mgmt|board|pid|10">팝업</a></li>
                                    </ul>
                                </li>
                                </c:if>
                                <li>
                                	<a><i class="fa fa-user"></i> 개인정보수정 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="/mgmt/admin/modify.do?IDX=${sessionScope.admin.ADMIN_ID}" data-menu="mgmt|member|profile">개인정보수정</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->
                    <%--
					<script>
					$.ajax({
						url     : '/mgmt/board/category_list.do',
						data    : {},
						type    : 'post',
						sendDataType : 'json',
						async   : false,
						success : function(data) {
							if(data.list.length>0){
								var menuHtml = '';
								$.each(data.list, function(i, item) {
									menuHtml += '<li><a href="/mgmt/board/list.do?PID='+item.IDX+'" data-menu="mgmt|board|pid|'+item.IDX+'">'+item.DESCRIPTION+'</a></li>';
								});
								$('#menu-board--list').append(menuHtml);
							}
						}
					});
					</script> 
					--%>
                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a href="/mgmt/admin/view.do?IDX=${sessionScope.admin.ADMIN_ID}" data-toggle="tooltip" data-placement="top" title="내정보 보기">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a href="/" target="_blank" data-toggle="tooltip" data-placement="top" title="사이트 보기">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a id="lockscreen" data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a href="/mgmt/logout.do" data-toggle="tooltip" data-placement="top" title="Logout">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
                </div>