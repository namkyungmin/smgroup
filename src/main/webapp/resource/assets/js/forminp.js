function formProductItem(){
	var items = formProductItemSource();
	items = items.replace("[_itemname_]","");
	items = items.replace("[_itemcontent_]","");
	return items;
}
function formProductItemReplace(itemname,itemcontent){
	var items = formProductItemSource();
	items = items.replace("[_itemname_]",itemname);
	items = items.replace("[_itemcontent_]",itemcontent);
	return items;
}
function formProductItemSource(){
	return ' \
	    <div class="form-group row"> \
			<div class="col-md-2 col-sm-2 col-xs-4"> \
				<input type="text" name="ext_name[]" class="form-control" placeholder="이름" value="[_itemname_]"/> \
			</div> \
			<div class="col-md-10 col-sm-10 col-xs-8"> \
				<input type="text" name="ext_value[]" class="form-control" placeholder="내용" value="[_itemcontent_]"/> \
				<span class="fa fa-remove form-control-feedback right" onclick="removeItem(this);"></span> \
			</div> \
	    </div> \
	';
}