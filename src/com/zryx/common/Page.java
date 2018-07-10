package com.zryx.common;

/**
 * 翻页信息对象
 * 
 * 首先会在list哪里点击，点击后结果去到userserlet.java，从这里获取和设置各种数据。再交给userDao来处理，
 * baseDao中的分页函数会将中间将sql语句包装再还给userDao去查询，之后再将查询到的某一页的数据返回，（
 * 因为翻页对象有初始值，所以会查到第一页的信息）， 在点击下一页的时候，会调用js来改变页面上隐藏域中的存储
 * 这当前是第几页的数字的value，再将新的数据提交到userServlet.java。。。。。
 * 
 * 细节：需要在list.jsp的from中规定一个id=fm1，
 */
public class Page {

	//当前是第几页
	private Integer currentPage = 1;
	
	//每页有多少行
	private Integer rowsPerPage = 10;

	// private Integer startRow = 0;
	
	//总共行数
	private Integer totalRows = 0;
	//总共页数
	private Integer totalPages = 0;
	
	/**
	 *	 设置总的页数
	 */
	public void setTotalPages() {
		this.totalPages = totalRows / rowsPerPage + (totalRows % rowsPerPage == 0?0:1);
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getRowsPerPage() {
		return rowsPerPage;
	}

	public void setRowsPerPage(Integer rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
	}
	/**
	 *	 当前页第一条记录在记录总数中是第几条记录
	 *
	 *当前页减1*每页多少条，假如得数是20，那么当前第一条在总数中是第21条。
	 */
	public Integer getStartRow() {

		return (currentPage - 1) * rowsPerPage;// +(currentPage.intValue()==1?0:1);
	}

	public Integer getTotalPages() {
		return totalPages;
	}


	public Integer getTotalRows() {
		return totalRows;
	}
	
	/**
	 * 在userServlet得到总记录数传回来用与计算各种数据
	 * @param totalRows
	 */
	public void setTotalRows(Integer totalRows) {
		this.totalRows = totalRows;
		setTotalPages();//根据记录总数计算总页数
	}
	/**
	 * 判断是否还有上一页，这个函数是为了在jsp页面的时候判断用的，is后面的字母就是这个属性的名字，布尔类型数据的get方法。
	 * @return boolean
	 */
	public boolean isHasPrevious() {
		if (currentPage == 1) {
			return false;
		} else {
			return true;
		}
	}
	/**
	 * 判断是否还有下一页，这个函数是为了在jsp页面的时候判断用的，is后面的字母就是这个属性的名字，布尔类型数据的get方法。
	 * @return boolean
	 */
	public boolean isHasNext() {
		if (totalPages == 1) {
			return false;
		} else {
			if (currentPage < totalPages) {
				return true;
			} else {
				return false;
			}
		}
	}
	
	/**
	 * 点击下一页的时候执行，这个执行结果会交给js，让js来将数据改变
	 * @return
	 */
	public int getNextPage() {
		return currentPage +1;
	}
	
	/**
	 * 点击上一页的时候执行，这个执行结果会交给js，让js来将数据改变
	 * @return
	 */
	public int getPrePage() {
		return currentPage-1;
	}

	@Override
	public String toString() {
		return "Page [currentPage=" + currentPage + ", rowsPerPage="
				+ rowsPerPage + ", totalRows=" + totalRows + ", totalPages="
				+ totalPages + "]";
	}
	
	
	
	
	

}
