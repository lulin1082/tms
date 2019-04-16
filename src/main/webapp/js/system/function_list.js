var SUCCESS = 1;
var Function = {
	id : "functionTable",
	table : null,
	layerIndex : -1
};

//新增
$('#formHead').on('click','.btn_add',showAddFunctionPage)
//修改
$('#formHead').on('click','.btn_update',showEditFunctionPage)
//删除
$('#formHead').on('click','.btn_delete',deleteFunction)

/**
 * 初始化表格的列
 */
Function.initColumn = function() {
	var columns = [
			{
				field : 'selectItem',
				radio : true
			},
			{
				title : '菜单ID',
				field : 'id',
				visible : false,
				align : 'center',
				valign : 'middle',
				width : '80px'
			},
			{
				title : '菜单名称',
				field : 'name',
				align : 'center',
				valign : 'middle',
				sortable : true,
				width : '180px'
			},
			{
				title : '上级菜单',
				field : 'parentName',
				align : 'center',
				valign : 'middle',
				sortable : true,
				width : '180px'
			},
			{
				title : '类型',
				field : 'type',
				align : 'center',
				valign : 'middle',
				sortable : true,
				width : '100px',
				formatter : function(item, index) {
					if (item.type == 1) {
						return '<span class="label label-success">菜单</span>';
					}
					if (item.type == 2) {
						return '<span class="label label-warning">按钮</span>';
					}
				}
			}, {
				title : '排序号',
				field : 'sort',
				align : 'center',
				valign : 'middle',
				sortable : true,
				width : '100px'
			}, {
				title : '菜单URL',
				field : 'url',
				align : 'center',
				valign : 'middle',
				sortable : true,
				width : '160px'
			}, {
				title : '授权标识',
				field : 'permission',
				align : 'center',
				valign : 'middle',
				sortable : true
			} ]
	return columns;
};

loadFunctionTable();

function loadFunctionTable() {
	var colunms = Function.initColumn();
	var table = new TreeTable(Function.id,"function/findObjects.do", colunms);
	table.setExpandColumn(2);
	table.setIdField("id");
	table.setCodeField("id");
	table.setParentCodeField("parentId");
	table.setExpandAll(false);
	table.init();
	Function.table = table;
}

//显示新增菜单页面
function showAddFunctionPage(){
	var url ='function/editUI.do';
	$('#container').load(url);
}

//删除菜单项



function deleteFunction(){
	debugger
	var selected = $('#functionTable').bootstrapTreeTable('getSelections');
	if (selected.length == 0) {
        alert("请选择一条记录");
        return false;
    } 
	var functionId = selected[0].id
	var param = {'id':functionId};
	var url = 'function/deleteFunction.do';
	$.post(url,param,function(result){
		if(result.state==SUCCESS){
			alert('删除成功！');
			loadFunctionTable();
		}else{
			alert(result.message);
		}
	})
}

//显示修改菜单页面
function showEditFunctionPage(){
	var selected = $('#functionTable').bootstrapTreeTable('getSelections');
	if (selected.length == 0) {
        alert("请选择一条记录");
        return false;
    }

	var functionId = selected[0].id
	$('#container').data('functionId',functionId);
	var url ='function/editUI.do';
	$('#container').load(url);
}
