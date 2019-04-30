<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>主页</title>
	<style>
		*{
			padding:0px;
			margin:0px;
		}
		.imgDiv:hover{
			border:1px solid #CCCCCC;
            box-shadow:0px 5px 10px 5px #DFDFDF;
			
        }
		a{
			color:#111111;
			text-decoration:none;
		}
		a:hover{
			color:red;
		}
		.headList li{
			margin-top:22px;
			width:120px;
			text-align: center;
			display:inline-block;
			font-size:16px;
		}
		dd{
			margin-left:20px;
		}
		.list li{
			margin-top:5px;
			margin-left:40px;
		}

		.bottom{
			float: left;
			margin-left: 150px;
			margin-top: 30px;
			height: 220px;
	
		}
		
		.bottom li{
			list-style: none;

			 line-height:30px;
			 
		}
		.jsList li{
			margin-left:35px;
			margin-top:15px;
		}
		#jsListDiv1{
			display:none;
		}
		#jsListDiv2{
			display:none;
		}
		#jsListDiv3{
			display:none;
		}
		#jsListDiv4{
			display:none;
		}
		#jsListDiv5{
			display:none;
		}
		#jsListDiv6{
			display:none;
		}
	</style>
	<script src="http://localhost:8080/ssm/JS/jquery.js"></script>
	<script>
		$(function(){
		    $('#btn1').click(function(){//点击button标签
				if($('#jsListDiv1').is(':hidden')){//如果当前隐藏
					$('#jsListDiv2').hide();//就隐藏div
					$('#jsListDiv3').hide();//就隐藏div
					$('#jsListDiv4').hide();//就隐藏div
					$('#jsListDiv5').hide();//就隐藏div
					$('#jsListDiv6').hide();//就隐藏div
					$('#jsListDiv1').show();//那么就显示div
				}else{//否则
					$('#jsListDiv1').hide();//就隐藏div
				}
		    })
		    $('#btn2').click(function(){//点击button标签
				if($('#jsListDiv2').is(':hidden')){//如果当前隐藏
					$('#jsListDiv1').hide();//就隐藏div
					$('#jsListDiv3').hide();//就隐藏div
					$('#jsListDiv4').hide();//就隐藏div
					$('#jsListDiv5').hide();//就隐藏div
					$('#jsListDiv6').hide();//就隐藏div
					$('#jsListDiv2').show();//那么就显示div
				}else{//否则
					$('#jsListDiv2').hide();//就隐藏div
				}
		    })
		    $('#btn3').click(function(){//点击button标签
				if($('#jsListDiv3').is(':hidden')){//如果当前隐藏
					$('#jsListDiv2').hide();//就隐藏div
					$('#jsListDiv1').hide();//就隐藏div
					$('#jsListDiv4').hide();//就隐藏div
					$('#jsListDiv5').hide();//就隐藏div
					$('#jsListDiv6').hide();//就隐藏div
					$('#jsListDiv3').show();//那么就显示div
				}else{//否则
					$('#jsListDiv3').hide();//就隐藏div
				}
		    })
		    $('#btn4').click(function(){//点击button标签
				if($('#jsListDiv4').is(':hidden')){//如果当前隐藏
					$('#jsListDiv2').hide();//就隐藏div
					$('#jsListDiv3').hide();//就隐藏div
					$('#jsListDiv1').hide();//就隐藏div
					$('#jsListDiv5').hide();//就隐藏div
					$('#jsListDiv6').hide();//就隐藏div
					$('#jsListDiv4').show();//那么就显示div
				}else{//否则
					$('#jsListDiv4').hide();//就隐藏div
				}
		    })
		    $('#btn5').click(function(){//点击button标签
				if($('#jsListDiv5').is(':hidden')){//如果当前隐藏
					$('#jsListDiv2').hide();//就隐藏div
					$('#jsListDiv3').hide();//就隐藏div
					$('#jsListDiv4').hide();//就隐藏div
					$('#jsListDiv1').hide();//就隐藏div
					$('#jsListDiv6').hide();//就隐藏div
					$('#jsListDiv5').show();//那么就显示div
				}else{//否则
					$('#jsListDiv5').hide();//就隐藏div
				}
		    })
		    $('#btn6').click(function(){//点击button标签
				if($('#jsListDiv6').is(':hidden')){//如果当前隐藏
					$('#jsListDiv2').hide();//就隐藏div
					$('#jsListDiv3').hide();//就隐藏div
					$('#jsListDiv4').hide();//就隐藏div
					$('#jsListDiv5').hide();//就隐藏div
					$('#jsListDiv1').hide();//就隐藏div
					$('#jsListDiv6').show();//那么就显示div
				}else{//否则
					$('#jsListDiv6').hide();//就隐藏div
				}
		    })
		})
	</script>
</head>
<body>
	
	
		<div style="width:100%;height:45px;"></div>

		<div style="width:100%;height:70px;border:1px solid #E5E5E5;background-color: white;">
			<div style="float:left;width:200px;height:68px;">
				<img src="http://localhost:8080/ssm/img/nike.png" width="150px" height="68px" style="margin-left:18px;" >
			</div>
			<div style="float:left;margin-left:30px;width:830px;height:70px;background-color:white;">
				<ul style="list-style: none;margin-top: -4px; " class="headList">
					<li><a href="">男子</a><button id="btn1" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
					<li><a href="">女子</a><button id="btn2" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
					<li><a href="">男孩</a><button id="btn3" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
					<li><a href="">女孩</a><button id="btn4" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
					<li style="width:150px;"><a href="">NIKEiD专属定制</a><button id="btn5" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
					<li><a href="">流行潮品</a><button id="btn6" style="border:0px;background-color:white;width:30px;height:24px;font-size:15px;">∨</button></li>
				</ul>
			</div>
			<div style="float:right;width:280px;height:70px;line-height:70px;background-color: white;margin-right:8px;">
				<form action="http://localhost:8080/ssm/search/searchbyname.do" name="search"  id="search">
						<input type="text" style="width:225px;height:30px;font-size:18px;" placeholder="搜索" name="name" >
					<label>
				<input src="http://localhost:8080/ssm/img/serach.png" type="image" name="img" style="height:32px;position:relative;left:-5px;top:12px;border:1px solid #A9A9A9;cursor:hand;" >
					</label>
				
				</form>
			</div>
		</div>

		<!-- js实现显示 -->
		<div id="jsListDiv1" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">休闲</a></li>
					<li><a href="">跑步</a></li>
					<li><a href="">篮球</a></li>
					<li><a href="">足球</a></li>
					<li><a href="">训练</a></li>
					<li><a href="">Jordan</a></li>
					<li><a href="">React</a></li>
					<li><a href="">Air Force 1</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>所有服装</b></li>
					<li><a href="">专属定制</a></li>
					<li><a href="">Air Max</a></li>
					<li><a href="">套头衫</a></li>
					<li><a href="">夹克</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div>
		<div id="jsListDiv2" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div>
		<div id="jsListDiv3" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">所有男孩商品</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">冬季装备精选</a></li>
					<li><a href="">穿脱自如儿童鞋系列</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>

				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">所有鞋类</a></li>
					<li><a href="">婴童（17-27欧码）</a></li>
					<li><a href="">幼童（27.5-35欧码）</a></li>
					<li><a href="">大童（35.5-40欧码）</a></li>
					<li><a href="">所有服装</a></li>
					<li><a href="">婴童（0-3岁）</a></li>
					<li><a href="">幼童（4-6岁）</a></li>
					<li><a href="">大童（7岁及以上）</a></li>
					
				</ul>

				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>品牌</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">Nike Sportswear</a></li>
					<li><a href="">JORDAN</a></li>
					<li><a href="">运动</a></li>
					<li><a href="">篮球</a></li>
					<li><a href="">跑步</a></li>
					

					

				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div><div id="jsListDiv4" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">所有女孩商品</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">冬季装备精选</a></li>
					<li><a href="">穿脱自如儿童鞋系列</a></li>
					<li><a href="">折扣优惠</a></li>
				</ul>
			</div>

			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">所有鞋类</a></li>
					<li><a href="">婴童（17-27欧码）</a></li>
					<li><a href="">幼童（27.5-35欧码）</a></li>
					<li><a href="">大童（35.5-40欧码）</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>所有服装</b></li>
					<li><a href="">婴童（0-3岁）</a></li>
					<li><a href="">幼童（4-6岁）</a></li>
					<li><a href="">大童（7岁及以上）</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>


			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市品牌</b></li>
					<li><a href="">Nike Sportswear</a></li>
					<li><a href="">JORDAN</a></li>
					<li><a href="">运动</a></li>
					<li><a href="">跑步</a></li>
					<li><a href="">健身/训练</a></li>
					<li><a href="">篮球</a></li>
					<li><a href="">足球</a></li>
					<li><a href="">折主推鞋款</a></li>
					<li><a href="">DYNAMO系列</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div><div id="jsListDiv5" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div><div id="jsListDiv6" style="clear:left;float:left;width:100%;height:470px;border:1px solid #CCCCCC;">
			<div style="float:left;margin-left:188px;width:250px;height:470px;">
				<ul style="margin-top:10px;list-style: none;font-size:16px;" class="jsList">
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">各类服装</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
			<div style="float:left;margin-left:60px;margin-top:10px;height:445px;border:1px solid #E5E5E5;"></div>
			<!-- 所有鞋类、所有服装 -->
			<div style="float:left;margin-left:20px;width:330px;height:470px;">
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
					<li><a href="">最新上市</a></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
				<ul style="float:left;margin-top:10px;list-style: none;font-size:14px;" class="jsList">
					<li><b>最新上市</b></li>
					<li><a href="">SNKRS 新品预览</a></li>
					<li><a href="">当季IN货</a></li>
					<li><a href="">折扣优惠</a></li>
					<li><a href="">企业团购</a></li>
				</ul>
			</div>
		</div>

		
	</div>

          
              
	     
</body>
</html>