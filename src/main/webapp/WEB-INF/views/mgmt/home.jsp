<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="include/head.jsp" %>
</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">
            
            <div class="col-md-3 left_col">
                <%@ include file="include/sidebar.jsp" %>
            </div>
            <!-- top navigation -->
            <div class="top_nav">
                <%@ include file="include/top.jsp" %>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="row top_tiles">
                        <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="tile-stats">
                                <div class="icon"><i class="fa fa-bookmark-o"></i>
                                </div>
                                <div class="count">10000</div>

                                <h3>이메일</h3>
                                <p>총 참여 인원</p>
                            </div>
                        </div>
                    </div>
                    <div class="page-title">
                        <div class="title_left">
                            <h3>참여자 통계</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>뉴스레터 <small>일별참여자</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-hover">
	                                  <colgroup>
	                                  <col>
	                                  <col width="23%">
	                                  <col width="23%">
	                                  <col width="23%">
	                                  </colgroup>
				                      <thead>
				                        <tr>
				                          <th>날짜</th>
				                          <th class="text-center">웹</th>
				                          <th class="text-center">모바일</th>
				                          <th class="text-center">총계</th>
				                        </tr>
				                      </thead>
				                      <tbody>

										<?php
										if(count($posts['event05_stat']) > 0):
											foreach($posts['event05_stat'] as $key => $post): 
										?>
				                        <tr>
				                          <td><?php echo $post['date']?></td>
				                          <td class="text-center"><?php echo $post['web']?></td>
				                          <td class="text-center"><?php echo $post['mobile']?></td>
				                          <td class="text-center"><?php echo $post['count']?></td>
				                        </tr>
										<?php
											endforeach;
										endif;
										?>
				                      </tbody>
				                    </table>
                                </div>
                                <div class="x_content">
                                    <canvas id="canvas_bar_05"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-title">
                        <div class="title_left">
                            <h3>최근 뉴스레터 참여자</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                    
                        <div class="col-md-4">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>뉴스레터 <small><?php echo $posts['event05_total'];?>건</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

									<?php
									if(count($posts['event05']) > 0):
										foreach($posts['event05'] as $post): 
									?>
										
                                    <article class="media event">
                                        <a class="pull-left date">
                                            <p class="month"><?php echo date("m", strtotime( $post->getCreated_at() ) ); ?></p>
                                            <p class="day"><?php echo date("d", strtotime( $post->getCreated_at() ) ); ?></p>
                                        </a>
                                        <div class="media-body">
                                            <a class="title" href="#"><?php echo $post->getName(); ?></a>
                                            <p><?php echo $post->getPhone(); ?></p>
                                            <small><?php echo $post->getCreated_at(); ?></small>
                                        </div>
                                    </article>
									<?php 
									    endforeach; ?>
									<?php else: ?>
                                    <article class="media event">
                                        참여자가 없습니다.
                                    </article>
									<?php endif; ?>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- footer content -->
                <%@ include file="include/footer.jsp" %>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>
    <%@ include file="include/script.jsp" %>
    <!-- sparkline -->
    <script src="/assets/backend/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="/assets/backend/js/chartjs/chart.min.js"></script>

    <!-- flot js -->
    <!--[if lte IE 8]><script type="text/javascript" src="/assets/backend/js/excanvas.min.js"></script><![endif]-->
	
	<script>
		
		var label_01 = [];
		var data_01 = [];

		<?php
		if(count($posts['event01_stat']) > 0):
			foreach($posts['event01_stat'] as $key => $post): 
		?>
        label_01["<?php echo $key?>"]="<?php echo $post['date']?> (<?php echo $post['count']?>)";
		data_01["<?php echo $key?>"]="<?php echo $post['count']?>";
		<?php
			endforeach;
		endif;
		?>


        var barChartData_01 = {
            labels: label_01,
            datasets: [
                {
                    fillColor: "#26B99A", //rgba(220,220,220,0.5)
                    strokeColor: "#26B99A", //rgba(220,220,220,0.8)
                    highlightFill: "#36CAAB", //rgba(220,220,220,0.75)
                    highlightStroke: "#36CAAB", //rgba(220,220,220,1)
                    data: data_01
                }
            ],
        }
        $(document).ready(function () {
            new Chart($("#canvas_bar_01").get(0).getContext("2d")).Bar(barChartData_01, {
                tooltipFillColor: "rgba(51, 51, 51, 0.55)",
                responsive: true,
                barDatasetSpacing: 6,
                barValueSpacing: 5
            });
        });


	</script>
</body>

</html>