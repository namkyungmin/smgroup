
(function($){
	/* 파일 추가 */
	var $accept = ".gif,.jpg,.png";
	
	function addFile (){
		var $fileArea = $(this).parents('.add_img_area').find('.file_area');
		var filegroup = $fileArea.data('group'); 
		var cnt = $fileArea.find('input[type="file"]').length + 1;
		if($fileArea.data("type")=="docimg"){
			$accept = ".gif,.jpg,.png,.pdf,.doc,.docx,.hwp,.xls,.xlsx,.ppt,.pptx";
		}
		var html = '<li class="item-file">\
						<div class="input-group">\
							<span class="input-group-btn"><button type="button" class="btn btn-primary" id="btnDelete"><i class="fa fa-close"></i></button></span>\
							<input type="file" name="'+filegroup+'_' + (cnt-1) + '" id="'+filegroup+'_' + (cnt-1) + '" class="upload-hidden" accept="'+$accept+'">\
							<input type="text" class="form-control upload-name" placeholder="업로드" readonly="readonly">\
							<span class="input-group-btn">\
			                     <label for="thumb_' + (cnt-1) + '" class="btn btn-dark"><i class="fa fa-upload"></i></label>\
			                 </span>\
						</div>\
				    </li>\
				    ';
		function pushHtml (){
			$fileArea.append(html);
		}
		if ($(this).is("#btnAddFile")){
			if(cnt <= 3){
				pushHtml();
			}else{
				alert("파일 첨부는 최대 3개까지 가능합니다. ");
				return false;
			}
		}
		
		if($(this).is("#btnAddFile2")){
			if(cnt <= 25){
				pushHtml();
			}else{
				alert("파일 첨부는 최대 25개까지 가능합니다. ");
				return false;
			}
		}
		$fileArea.on("click" , "#btnDelete" ,deleteFile);
	}
	function deleteFile(){
		$(this).parents(".item-file").remove();
	}
	
	$("#btnAddFile, #btnAddFile2").on("click" , addFile);
	$(document).on('click','.upload-name',function(){
		$(this).parent().children('[type=file]').click();
	});
    $(document).on('change','.file_area .upload-hidden', function(){
        var filename = '';
        if(window.FileReader){
            // 파일명 추출
        		if($(this)[0].files[0]){
        			filename = $(this)[0].files[0].name;
        		}
        }else{
            // Old IE 파일명 추출
        		if($(this).val()){
        			filename = $(this).val().split('/').pop().split('\\').pop();
        		}
        };

        $(this).siblings('.upload-name').val(filename);
        
        var parent = $(this).parents('li.item-file');
        parent.children('.upload-display').remove();
        if(window.FileReader){
            //image 파일만
        		if($(this)[0].files[0]){
        			if (!$(this)[0].files[0].type.match(/image\//)) return;
        		}else{
        			return;
        		}
            
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
})(jQuery);