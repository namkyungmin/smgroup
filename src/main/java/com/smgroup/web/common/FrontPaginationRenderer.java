package com.smgroup.web.common;

import com.smgroup.web.common.AbstractPaginationRenderer;
 
@SuppressWarnings("unused")
public class FrontPaginationRenderer extends AbstractPaginationRenderer {
 
	public FrontPaginationRenderer() {
		firstPageLabel = "<div class=\"left arrow\"><a href=\"javascript:;\" onclick=\"{0}({1}); return false;\" class=\"first\">처음페이지</a>&#160;"; 
		previousPageLabel = "<a href=\"javascript:;\" class=\"prev\" onclick=\"{0}({1}); return false;\">이전 페이지</a>&#160;</span>";
		currentPageLabel = "<span class=\"num\">{0}</span>&#160;";
		otherPageLabel = "<a href=\"javascript:;\" onclick=\"{0}({1}); return false;\" class=\"num\">{2}</a>&#160;";
		nextPageLabel = "<span class=\"right arrow\"><a href=\"javascript:;\" class=\"next\" onclick=\"{0}({1}); return false;\">다음 페이지</a>&#160;";
		lastPageLabel = "<a href=\"javascript:;\" onclick=\"{0}({1}); return false;\" class=\"last\">마지막 페이지</a></li>&#160;</span></div>";
	}
}