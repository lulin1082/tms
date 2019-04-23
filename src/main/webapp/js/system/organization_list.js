$(document).ready(function(){
	debugger;
	$("#queryFormId").on('click','.btn-add,.btn-update',doShowEditDialog);
	$("#queryFormId").on('click','.btn-search',doGetObjects);
	$("#queryFormId").on('click','.btn-valid,.btn-invalid',doValidById);	
	$('#queryFormId').on('click','.childOrgs',doGetChildObjects);
    /*$('selectProjectId').on("change",'select#status',function() {
        console.logs($(this).val());
        $('#searchNameId').val=$(this).val();
    }*/
	doGetInitObjects();
});

function doGetInitObjects(){
	debugger;searchNameId
	doGetObjects();
    doFillSelectData();
}

function doFillSelectData(){
	var url="org/findOrgIdAndNames.do";
	$.getJSON(url,function (result) {
			if(result.state==1){
				debugger;
                setOrganizationSelectOptions(result.data);
			}else{
				alert(result.message)
			}
    })
 }

 function setOrganizationSelectOptions(list){
	debugger;
	console.log("strt")
	var selectObj = $('#selectProjectId');
	selectObj.empty();
	selectObj.append('<option value="">选择项目</option>')
	var optionObj ="<option value=[id]>[name]</option>"
	for(var i in list){
        console.log(( JSON.stringify(list[i].id)));
        console.log(( JSON.stringify(list[i].name)));

        selectObj.append(optionObj.replace("[id]",list[i].id).replace("[name]",list[i].name));

	}
     /*var select=$();
 select.empty();
 for(var i in list){
     select.append("<option value='"+list.id+"'> "+list.name+"</option>")
  }*/
 }


//doGetObjects org/findPageObjects.do getQuery
//获得team记录信息
function doGetObjects(){
   var url="org/findOrgObjects.do";
  var params=getQueryParamValues();
  var parentId=$("#modal-dialog").data("parentId");
  console.log("queryFormId.parentId="+parentId);
  if(parentId)
  {
  	params.parentId=parentId;
  }
  var currentPage=$("#pageId").data('pageCurrent');
  if(currentPage){params.pageCurrent=currentPage}
  $.post(url,params,function(result){
	   if(result.state==1){
		   setTableRows(result.data.list);
		   setPagination(result.data.pageObject);
 	   }else{
		   alert(result.message);
	   }
  });
}
function doGetChildObjects(){
	var parentId = $(this).parent().parent().data('id');
    $("#modal-dialog").data("parentId",parentId);
	$('#pagination').data('curPage',1);
	doGetObjects();
}
//获取查询参数
function getQueryParamValues(){
	var searchNam  = $('#searchNameId').val();
	var params = {"name":searchNam}
	return params;
}
//初始化列表页面
function setTableRows(list){

	var tBody=$('tbody');
	tBody.empty();
	var tds='<td><input type="checkbox" class="checkbox" name="checkedItem" value="[id]"></td>'+
	        '<td><a class="childOrgs">[name]</a></td>'+
	        '<td>[code]</td>'+
	        '<td>[parentName]</td>'+
	        '<td>[valid]</td>'+
	        '<td><a class="btn btn-default btn-update doShowEditDialog">修改</a></td>';
	for(var i in list){
	    var tr=$('<tr></tr>');
	    tr.data("id",list[i].id);
	    tr.append(tds.replace('[id]',list[i].id)
	    		  .replace('[name]',list[i].name)
	    		  .replace('[code]',list[i].code)
	    		  .replace('[parentName]',list[i].parentName!=0?list[i].parentName:'无')
	    		  .replace('[valid]',list[i].valid?'启用':'禁用'));
	    tBody.append(tr);

	}
}

function doShowEditDialog(){
    var url='org/editUI.do?t='+Math.random(1000);
	var titel;
	if($(this.hasClass("btn-add"))){
		$("#modal-dialog").data("id",$(this).parent().parent().data("id"));
	}
    if($(this).hasClass("btn-update")){
        $("#modal-dialog").data("id",$(this).parent().parent().data("id"));
        title="修改机构信息"
    }
    $().data(d);
    $("#modal-dialog .modal-body").load(url,function(){
        $('#modal-dialog .modal-title').html(title);
        $('#modal-dialog').modal('show');
    })
}



/*
//显示编辑模态框
function doShowEditDialog(){
	 var url='org/editUI.do?t='+Math.random(1000);
	 var title;
	 if($(this).hasClass("btn-add")){
		 title="添加机构信息";
	 }
	 if($(this).hasClass("btn-update")){
		 $("#modal-dialog").data("id",$(this).parent().parent().data("id"));
		 title="修改机构信息"
	 }
	 $("#modal-dialog .modal-body").load(url,function(){
		 $('#modal-dialog .modal-title').html(title);
		 $('#modal-dialog').modal('show');
	 })
}
*/

//禁用&启用
function doValidById(){
	var state;
	//判断点击的按钮
	if($(this).hasClass("btn-valid")){
		state=1;
	}else{
		state=0;
	}
	//获得选中的id
	var checkedIds=getCheckedIds();
	if(checkedIds==''){
		alert("至少选择一个");
		return;
	}
	//发送ajax请求修改状态
	var url='org/doValidById.do';
	var params={'checkedIds':checkedIds,'valid':state}
	$.post(url,params,function(result){
		if(result.state==1){
		  doGetObjects();
		}else{
		  alert(result.message);
		}
	})
}
//获得选中的id，然后拼接成字符串
function getCheckedIds(){
	var checkedIds ='';
	$('tbody input[name="checkedItem"]').each(function(){
		if($(this).is(':checked')){  //或者用prop('checked')
			if(checkedIds==''){
			   checkedIds += $(this).val();
			}else{
			   checkedIds += ','+$(this).val();
			}
		}
	})
	return checkedIds;
}