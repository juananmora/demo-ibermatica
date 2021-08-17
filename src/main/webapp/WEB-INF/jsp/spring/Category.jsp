<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Menu</a>
	</div>

	<p>
	<center>
		<h2>
			<c:out value="${category.name}" />
		</h2>
	</center>
	<table id="shop_table" class="position_table">
		<c:forEach var="product" items="${productList.pageList}"
			varStatus="loopStatus">
			
				<tr>
					<td class="td_image">
					<a
							
							href="<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>">
							<img class="card_img_product img_shop_category"  src="${product.image}">
								
					</a>
					</td>
					<td>
						<p class="card_name"><c:out value="${product.name}" /></p>
					</td>
					
				</tr>
				
		
		</c:forEach>
	</table>

</div>
<%@ include file="IncludeBottom.jsp"%>