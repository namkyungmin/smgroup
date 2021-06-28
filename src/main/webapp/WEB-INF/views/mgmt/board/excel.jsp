<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="application/vnd.ms-excel; charset=utf-8">

	
<table class="table table-striped" style="<?php if($_GET['type']=='download'){echo "font-size:13px;width:1200px;";}?>">
	<thead>
		<tr class="headings">
			<th width="10%"  style="text-align:center;background-color:#333;color:#fff;"># </th>
			<th width="10%"  style="text-align:center;background-color:#333;color:#fff;">이메일 </th>
			<th width="15%"  style="text-align:center;background-color:#333;color:#fff;">등록일 </th>
		</tr>
	</thead>
	<tbody>
		<?php
		$seq = $paging['total']-($paging['perPage']*($paging['currentPage']-1));
		if(count($posts) > 0):
			foreach($posts as $post): 
		?>
		<tr>
			<td style="text-align:center;vertical-align:top;border:1px solid #333;"><?php echo $seq; ?></td>
			<td style="text-align:left;vertical-align:top;border:1px solid #333;"><?php echo $post->getTitle(); ?></td>
			<td style="text-align:center;vertical-align:top;border:1px solid #333;"><?php echo $post->getCreated_at(); ?></td>
		</tr>
		<?php
			$seq--;
		?>
		
		<?php 
		    endforeach; ?>
		<?php else: ?>
		<tr>
			<td colspan="<?php echo $event_category->getSlug()=="rank"?'8':'7'?>">컨텐츠가 없습니다.</td>
		</tr>
		<?php endif; ?>
	</tbody>
	<?php
    	if($_GET['type']=='html'){
    ?>
	<tfoot>
		<td colspan="<?php echo $event_category->getSlug()=="rank"?'8':'7'?>">
			<div class="pull-left foot_left_showing">
				Total <?php echo $paging['total'];?> entries
			</div>						
		</td>
	</tfoot>
	<?php
    	}
    ?>
</table>