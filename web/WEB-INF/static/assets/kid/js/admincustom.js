function alertSucceed(content){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 80,
		padding: 2,
		icon: 'succeed',
		content: content==null?"":content,
		ok: function(){}
	});
}

function alertSuFunction(content, fun){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 80,
		padding: 2,
		icon: 'succeed',
		content: content==null?"":content,
		ok: function(){
			fun();
			closeAllDialog();
		},
		close:function(){
			fun();
		}
	});
}

function alertError(content){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 80,
		padding: 2,
		icon: 'error',
		content: content==null?"":content,
		ok: function(){}
	});
}

function alertErFunction(content, fun){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 80,
		padding: 2,
		icon: 'error',
		content: content==null?"":content,
		ok: function(){
			fun();
			closeAllDialog();
		},
		close:function(){
			fun();
		}
	});
}

function alertWarning(content){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 260,
		height: 80,
		padding: 2,
		icon: 'warning',
		content: content==null?"":content,
		ok: function(){}
	});
}

function alertWaFunction(content, fun){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 80,
		padding: 2,
		icon: 'warning',
		content: content==null?"":content,
		ok: function(){
			fun();
			closeAllDialog();
		},
		close:function(){
			fun();
		}
	});
}

function alertConfirm(content, fun){
	art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 210,
		height: 80,
		padding: 2,
		icon: 'question',
		content: content==null?"":content,
		ok: function(){
			fun();
		},
		cancel: true
	});
}

function alertConfirmCancel(content, fun, fun1){
	top.art.dialog({
		title: "",
		lock : true,
		opacity: 0.1,
		width: 260,
		height: 80,
		padding: 2,
		icon: 'question',
		content: content==null?"":content,
		ok: function(){
			fun();
		},
		cancel: function(){
			fun1();
		}
	});
}

function closeAllDialog(){
	var list = window.top.art.dialog.list;
	for (var i in list) {
		list[i].close();
	};
}

function alertAutoPan(content){
	var dia = top.art.dialog({
		id:"alertAutoPan",
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 90,
		padding: 2,
		icon: 'succeed',
		content: content==null?"成功":content,
		cancel:false
	});
	if(dia) dia.show();
	setTimeout(function(){
		
	},100);
	setTimeout(function(){
		dia.hide();
	},1500);//延时1秒
}

function alertAutoPanCancel(content, fun){
	var dia = top.art.dialog({
		id:"alertAutoPan",
		title: "",
		lock : true,
		opacity: 0.1,
		width: 200,
		height: 90,
		padding: 2,
		icon: 'succeed',
		content: content==null?"成功":content,
		cancel:function(){
			fun();
		}
	});
	if(dia) dia.show();
	setTimeout(function(){
		
	},200);
	setTimeout(function(){
		dia.hide();
	},1500);//延时1秒
}