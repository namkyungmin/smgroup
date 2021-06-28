<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="req" value="${pageContext.request}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/head.jsp" %>
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
				<div class="page-wrap page-list" data-menu="mgmt|board|category">
					<div class="page-title">
					    <div class="title_left">
							<h3>카테고리관리</h3>
					    </div>
						<div class="title_right">
							<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
					        </div>
					    </div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
					
					    <div class="col-md-12 col-sm-12 col-xs-12">
					        <div class="x_panel">
					            <div class="x_title">
					                <h2>목록<small>파일관리의 경우 필요없는 아이템을 삭제해주세요.썸네일 이미지는 thumb로 되어야 합니다.</small></h2>									
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content  table-responsive">
									<table class="table table-striped responsive-utilities jambo_table bulk_action" id="category">
										<thead>
											<tr class="headings">
												<th width="10%" class="column-title text-center">ID </th>
												<th width="10%" class="column-title text-center">SLUG </th>
												<th width="12%" class="column-title text-center">카테고리 코드 </th>
												<th class="column-title text-center">Description </th>
												<th width="13%" class="column-title text-center">타입추가 </th>
												<%-- 
												<th width="5%" class="column-title text-center">추천</th>
												--%>
												<th width="5%" class="column-title text-center">HTML </th>
												<th width="8%" class="column-title text-center">페이지수</th>
												<th width="17%" class="column-title text-center">파일업로드</th>
												<th width="10%" class="column-title no-link last"><span class="nobr">Action</span></th>
											</tr>
										</thead>
										<tbody>

										 <c:choose>
										    <c:when test="${fn:length(list) > 0}">
										        <c:forEach items="${list }" var="row">
													<tr data-seq="${row.IDX }">
														<td class="text-center seq">${row.IDX }</td>
														<td class="text-center">
															<input type="text" name="SLUG" class="form-control inp-slug" value="${row.SLUG }" />
														</td>
														<td class="text-center">
															<select name="CODE" class="form-control">
																<option value="list" ${row.CODE=='list'?'selected="selected"':'' }>리스트</option>
																<option value="social" ${row.CODE=='social'?'selected="selected"':'' }>소셜</option>
																<option value="gallery" ${row.CODE=='gallery'?'selected="selected"':'' }>갤러리</option>
																<option value="event" ${row.CODE=='event'?'selected="selected"':'' }>이벤트</option>
																<option value="manager" ${row.CODE=='manager'?'selected="selected"':'' }>관리자</option>
															</select>
														</td>
														<td class="text-center"><input type="text" name="DESCRIPTION" class="form-control" value="${row.DESCRIPTION }"/></td>
														<td class="text-center">
															<input type="text" name="TYPES" class="form-control" value="${row.TYPES }" />
														</td>
														<%-- 
														<td class="text-center">
															
															<label class="tag-checkbox">
																<input type="checkbox" name="TAG" class="flat" ${row.TAG=='Y'?'checked="checked"':'' } value="Y">
															</label>
															<i class="fa fa-edit taginput rk-input" data-toggle="tooltip" data-placement="bottom" title="${row.TAG_DEFAULT}"></i>
															<input type="hidden" name="TAG_DEFAULT" class="form-control" value="${row.TAG_DEFAULT}"> 
															
															<label class="tag-checkbox">
																<input type="checkbox" name="MAIN" class="flat" ${row.MAIN=='Y'?'checked="checked"':'' } value="Y">
															</label>
															
														</td>
														--%>
														<td class="text-center">
															<label class="html-checkbox">
																<input type="checkbox" name="HTML" class="flat" ${row.HTML=='Y'?'checked="checked"':'' } value="Y">
															</label>
														</td>
														<td class="text-center">
															<input type="number" name="COUNT" class="form-control" value="${row.COUNT }" />
														</td>
														<td class="text-center">
															<input type="text" name="IMAGES" class="form-control" value="${row.IMAGES }" />
														</td>
														<td class=" last">
															<a href="#none" onclick="editCategory(${row.IDX });" class="btn btn-info btn-tbl-add"><i class="fa fa-save" data-toggle="tooltip" data-placement="bottom" title="수정하기"></i></a>
															<a href="#none" onclick="delCategory(${row.IDX });" class="btn btn-info btn-tbl-add"><i class="fa fa-remove" data-toggle="tooltip" data-placement="bottom" title="삭제하기"></i></a>
														</td>
													</tr>
										        </c:forEach>
										    </c:when>
										    <c:otherwise>
											<tr>
												<td colspan="7">컨텐츠가 없습니다.</td>
											</tr>
										    </c:otherwise>
										</c:choose>
										</tbody>
									    <tfoot>
									        <tr>
									            <td></td>
												<td><input type="text" name="SLUG" class="form-control inp-slug" value="" /></td>
									            <td>
													<select name="CODE" class="form-control">
														<option value="list">리스트</option>
														<option value="social">소셜</option>
														<option value="gallery">갤러리</option>
														<option value="event">이벤트</option>
														<option value="manager">관리자</option>
													</select>
									            </td>
									            <td><input type="text" name="DESCRIPTION" class="form-control" value="" required="required" /></td>
												<td><input type="text" name="TYPES" class="form-control" value="" /></td>
												<%-- 
												<td class="text-center">
													<label class="tag-checkbox">
														<input type="checkbox" name="TAG" class="flat" value="Y">
													</label>
													<i class="fa fa-edit taginput rk-input"></i>
													<input type="hidden" name="TAG_DEFAULT" class="form-control" value=""> 
													<label class="tag-checkbox">
														<input type="checkbox" name="MAIN" class="flat" ${row.MAIN=='Y'?'checked="checked"':'' } value="Y">
													</label>
													
												</td>
													--%>
												<td class="text-center">
													<label class="html-checkbox">
														<input type="checkbox" name="HTML" class="flat" checked="checked"  value="Y">
													</label>
												</td>
												<td class="text-center">
													<input type="number" name="COUNT" class="form-control" value="15" />
												</td>
												<td class="text-center">
													<input type="text" name="IMAGES" class="form-control" value="thumb,file,gallery,slide" />
												</td>
									            <td><a href="#none" onclick="addCategory();" class="btn btn-info btn-tbl-add"><i class="fa fa-check"></i><span>추가하기</span></a></td>
									        </tr>
									    </tfoot>
									</table>
					            </div>
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
    <div class="modal fade" id="tagsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tagsModalLabel">TAG 입력 <small>태그는 키보드의 탭이나 엔터 혹은 콤마(,)로 구분하실 수 있습니다.</small></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>

                <div class="modal-body">
                    <input type="text" id="input-tags" class="tags form-control" value="">
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary tag-save-btn" data-dismiss="modal">Save</button>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/script.jsp" %>
	<script src="/resource/assets/js/tags/jquery.tagsinput.min.js"></script>
	<script src="/resource/assets/js/forminp.js"></script>
	
	<script>
		$(function(){
			$('.btn').data('toggle','modal').click(function(){
				if($(this).data('target')==".category_code"){
					loadCategoryCode();
				}
			});
			
            $("#category tbody [name='TYPES']").tagsInput({
                'defaultText':'Add Item',
                'width':'auto'
            });
            $("#category tfoot [name='TYPES']").tagsInput({
                'defaultText':'Add Item',
                'width':'auto'
            });
            $("#category tbody [name='IMAGES']").tagsInput({
                'defaultText':'Add Item',
                'width':'auto'
            });
            $("#category tfoot [name='IMAGES']").tagsInput({
                'defaultText':'Add Item',
                'width':'auto'
            });
            $('#input-tags').tagsInput({
                'defaultText':'Add Item',
                'width':'auto',
                'height':'200px'
            });
            $('.taginput').on('click', function(event){
            	
            		var thisItem = $(this).parents('td').find('[name="TAG_DEFAULT"]');
            			$('#tagsModal').modal('show');
            			$('#input-tags').val(thisItem.val());
        				$('#input-tags').importTags(thisItem.val());
            			$('.tag-save-btn').off('click');
            			$('.tag-save-btn').on('click',function(){
            				thisItem.val($('#input-tags').val());
            				
            				//$('#input-tags').val('');
            				//$('#input-tags').importTags('');
            			});
            	});
		});
		
		function addCategory(){
			var params = {};
			$('#category tfoot tr input,#category tfoot tr select').each(function() {
				if($(this).attr('name')){
					params[$(this).attr('name')] = $(this).val();
				}
				
			});
			params['PAGE'] = 'json';
			params['retype'] = 'insert';
			$.post('categoryProc.do',
				params,
				function(response){
					if(response.result=="ok"){
						window.location.reload();
					}else{
						alert(response.result);
					}
				}
			,'json');
		}
		function editCategory(id){
			var params = {};
			$('#category tbody tr[data-seq='+id+'] input,#category tbody tr[data-seq='+id+'] select').each(function() {
				if($(this).attr('name')){
					if($(this).attr('type')=='checkbox'){
						if($(this).is(':checked')){
							params[$(this).attr('name')] = 'Y';
						}else{
							params[$(this).attr('name')] = 'N';
						}
					}else{
						params[$(this).attr('name')] = $(this).val();
					}
				}
			});
			params['IDX'] = id;
			params['PAGE'] = 'json';
			params['retype'] = 'update';
			if(confirm("수정하시겠습니까?")){
				$.post('categoryProc.do',
					params,
					function(response){
						if(response.result="ok"){
							window.location.reload();
						}else{
							alert(response.result);
						}
					}
				,'json');
			}
		}
		function delCategory(id){
			var params = {};
			if(confirm("삭제하시겠습니까?")){
	    			params['IDX'] = id;
	    			params['PAGE'] = 'json';
	    			params['retype'] = 'delete';
				$.post('categoryProc.do',
					params,
					function(response){
						if(response.result="ok"){
							window.location.reload();
						}else{
							alert("삭제오류입니다.");
						}
					}
				,'json');
			}
		}
	</script>
</body>

</html>