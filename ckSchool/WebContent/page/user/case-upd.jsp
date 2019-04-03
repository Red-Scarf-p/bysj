<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑文章 - 创业管理</title>
<jsp:include page="elements/link.jsp"></jsp:include>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-article-add" action="${pageContext.request.contextPath}/case/caseUpd.action" method="post" enctype="multipart/form-data">
	<input type="hidden" class="input-text" value="${cList.cid}" placeholder="" id=cid name="cid">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cList.cname}"  id="cname" name="cname">
			</div>
		</div>
		<div class="row cl">
		</div>
		<div class="row cl">
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>类型：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
			
				<select name="ccid" class="select">
				<c:forEach var="ccList" items="${ccList }">
					<c:if test="${ccList.ccid == cList.ccid}">
						<option value="${ccList.ccid }" selected="selected">${ccList.ccclass }</option>
					</c:if>
					<c:if test="${ccList.ccid != cList.ccid}">
						<option value="${ccList.ccid }">${ccList.ccclass }</option>
					</c:if>
				</c:forEach>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">队员数目：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  id="members" name="members" value="${cList.members}">
			</div>
			<%-- <div class="formControls col-xs-8 col-sm-9">
				<input type="text" readonly="readonly" class="input-text" value="${eList.username}" placeholder="" id="username" name="username">
				<input type="hidden" name="uid" value="${eList.uid}">
			</div> --%>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>指导教师：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
			
				<select name="tid" class="select">
				<c:forEach var="tList" items="${tList }">
					<c:if test="${tList.tid == cList.tid}">
						<option value="${tList.tid }" selected="selected">${tList.tname }</option>
					</c:if>
					<c:if test="${tList.tid != cList.tid}">
						<option value="${tList.tid }">${tList.tname }</option>
					</c:if>
				</c:forEach>
				</select>
				</span> </div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!-- <input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'commentdatemax\')||\'%y-%M-%d\'}' })" id="commentdatemin" name="commentdatemin" class="input-text Wdate">
				 --><input type="text" value="${cList.cdate }" onfocus="WdatePicker({ Date:'%y-%M-%d' })" id="cdate" name="cdate" class="input-text Wdate" style="width:120px;">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">介绍：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<!-- <script id="editor" type="text/plain" style="width:100%;height:400px;"></script> 
				-->
				<textarea name="cmessage"  style="height:auto; font-size:14px; width: 545px;height: 250px">${cList.cmessage }</textarea>
			 </div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
			<!-- onClick="article_save_submit();" -->
				<button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 提交</button>
				<!-- <button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button> -->
				<button onClick="removeIframe();" class="btn btn-default radius" type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>

<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	//表单验证
	$("#form-article-add").validate({
		rules:{
			cname:{
				required:true,
			},
			members:{
				required:true,
			},
			tid:{
				required:true,
			},
			ccid:{
				required:true,
			},
			cdate:{
				required:true,
			},
			cmessage:{
				required:true,
			},
		},
		onkeyup:false,
		focusCleanup:true,		//当为false时，验证无效时，没有焦点响应  
		success:"valid",
		submitHandler:function(form){	//表单提交句柄,为一回调函数，带一个参数：form 
			//$(form).ajaxSubmit();
			//var index = parent.layer.getFrameIndex(window.name);
			//parent.$('.btn-refresh').click();
			//parent.layer.close(index);
			//form.submit();
			$(form).ajaxSubmit({
				 type: 'post',
			    url: "${pageContext.request.contextPath}/case/caseUpd.action",
			    success: function(data){
			    	     //layer.msg('添加成功!',{icon:1,time:1000});
				    		var index = parent.layer.getFrameIndex(window.name);
				    		parent.layer.close(index);
			    	    },
			    	                error: function(XmlHttpRequest, textStatus, errorThrown){
			    	    var index = parent.layer.getFrameIndex(window.name);
		    		parent.layer.close(index);
			    	    }
			}); 
			//form.submit();
		}
	}); 
	
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>