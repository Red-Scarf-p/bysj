<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<jsp:include page="elements/link.jsp"></jsp:include>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-article-add" action="${pageContext.request.contextPath}/eduClass/eduClassUpd.action" method="post" >
	<input type="hidden" class="input-text" value="${eduClass.ecid}" placeholder="" id=ecid name="ecid">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${eduClass.ecclass}" id="ecclass" name="ecclass">
			</div>
		</div>
		<div class="row cl">
			<!-- <label class="form-label col-xs-4 col-sm-2">简略标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="articletitle2" name="articletitle2">
			</div> -->
		</div>
		<div class="row cl">
			<!-- <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="articlecolumn" class="select">
					<option value="0">全部栏目</option>
					<option value="1">新闻资讯</option>
					<option value="11">├行业动态</option>
					<option value="12">├行业资讯</option>
					<option value="13">├行业新闻</option>
				</select>
				</span> </div> -->
		</div>
		<div class="row cl">
			<%-- <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章类型：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
			
				<select name="ecid" class="select">
				<c:forEach var="ecList" items="${ecList }">
					<c:if test="${ecList.ecid == eList.ecid}">
						<option value="${ecList.ecid }" selected="selected">${ecList.ecclass }</option>
					</c:if>
					<c:if test="${ecList.ecid != eList.ecid}">
						<option value="${ecList.ecid }">${ecList.ecclass }</option>
					</c:if>
				</c:forEach>
				</select>
				</span> </div> --%>
		</div>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">排序值：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="0" placeholder="" id="articlesort" name="articlesort">
			</div>
		</div> -->
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">关键词：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="keywords" name="keywords">
			</div>
		</div> -->
		
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">文章作者：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="0" placeholder="" id="author" name="author">
			</div>
		</div> -->
		<%-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">文章来源：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" readonly="readonly" class="input-text" value="${eList.username}" placeholder="" id="username" name="username">
				<input type="hidden" name="uid" value="${eList.uid}">
			</div>
		</div> --%>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">允许评论：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="check-box">
					<input type="checkbox" id="allowcomments" name="allowcomments" value="">
					<label for="checkbox-pinglun">&nbsp;</label>
				</div>
			</div>
		</div> -->
		<div class="row cl">
			<%-- <label class="form-label col-xs-4 col-sm-2">日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!-- <input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'commentdatemax\')||\'%y-%M-%d\'}' })" id="commentdatemin" name="commentdatemin" class="input-text Wdate">
				 --><input type="text" value="${eList.edate }" onfocus="WdatePicker({ Date:'%y-%M-%d' })" id="edate" name="edate" class="input-text Wdate" style="width:120px;">
			</div> --%>
		</div>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">评论结束日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'commentdatemin\')}' })" id="commentdatemax" name="commentdatemax" class="input-text Wdate">
			</div>
		</div> -->
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">使用独立模版：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="check-box">
					<input type="checkbox" id="checkbox-moban">
					<label for="checkbox-moban">&nbsp;</label>
				</div>
				<button onClick="mobanxuanze()" class="btn btn-default radius ml-10">选择模版</button>
			</div>
		</div> -->
		<%-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!-- <div class="uploader-thum-container">
					<div id="fileList" class="uploader-list"></div>
					<div id="filePicker">选择图片</div>
					<button id="btn-star" class="btn btn-default btn-uploadstar radius ml-10">开始上传</button>
				</div> -->
  				<input name="newFile" type="file" value="${eList.epic }" class="opt_input" />
  				<br>
			</div>
		</div> --%>
		<%-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">原图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<label><c:if test="${eList.epic==null || eList.epic==''}">沒有圖片</c:if></label>
				<label>${eList.epic }</label>
				<input name="epic" type="hidden" value="${eList.epic }" class="opt_input" />
			</div>
		</div> 
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">内容：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<!-- <script id="editor" type="text/plain" style="width:100%;height:400px;"></script> 
				-->
				<textarea name="emessage"  style="height:auto; font-size:14px; width: 545px;height: 250px">${eList.emessage }</textarea>
			 </div>
		</div> --%>
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
	
	/* 檢驗重名 */
	$("#ecclass").change('input propertychange',function(){
		$.ajax({
			url:  "${pageContext.request.contextPath}/eduClass/eduClassCheck.action?ecclass="+$("#ecclass").val(),
	        type: "post",
		    success: function (data) {
			     if(data == 'yes'){
			            	 //layer.closeAll('loading');
			            	 layer.msg("已存在！请重新填写");
			            	 $("#ecclass").val("");
			      }
		    }
		});
	});
	
	//表单验证
	$("#form-article-add").validate({
		rules:{
			ecclass:{
				required:true,
			},
			
		},
		onkeyup:false,
		focusCleanup:true,		//当为false时，验证无效时，没有焦点响应  
		success:"valid",
		submitHandler:function(form){	//表单提交句柄,为一回调函数，带一个参数：form 
			$(form).ajaxSubmit({
				 type: 'post',
			    url: "${pageContext.request.contextPath}/eduClass/eduClassUpd.action",
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