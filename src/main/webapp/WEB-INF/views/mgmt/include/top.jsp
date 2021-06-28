<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="/resource/assets/images/logo.png" alt="">${sessionScope.admin.ADMIN_NAME}
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="/mgmt/admin/view.do?IDX=${sessionScope.admin.ADMIN_ID}">  Profile</a></li>
									<c:choose>
										<c:when test="${not empty(sessionScope.admin)}">
											<li><a href="/mgmt/logout.do"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
										</c:when>
									    <c:otherwise>
									        <li><a href="/mgmt/login.do"><i class="fa fa-sign-out pull-right"></i> Log In</a></li>
									    </c:otherwise>
									</c:choose>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
				