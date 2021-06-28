package com.smgroup.web.common;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;
 
public class ImagePaginationRenderer extends AbstractPaginationRenderer {
 
	public ImagePaginationRenderer() {
		firstPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\"><<</a></li>&#160;"; 
		previousPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\"><</a></li>&#160;";
		currentPageLabel = "<li class=\"active\"><span>{0}</span>&#160;";
		otherPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a></li>&#160;";
		nextPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">></a></li>&#160;";
		lastPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">>></a></li>&#160;";
	}
}