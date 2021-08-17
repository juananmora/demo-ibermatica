<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Menu principal</a>
	</div>
	<div class="title">
		<h2>Carro de compra</h2>
	</div>
	<form action="<c:url value="/shop/updateCartQuantities.do"/>"
		method="post">
			<c:if test="${cart.numberOfItems == 0}">
				<tr>
					<td colspan="8"><b>El carro está vacio.</b></td>
				</tr>
			</c:if>
			<div class='item-wrapper'>
					<div class='row_item '>
					<div class='column_item'>
					      <span>
					      Artículo ID
					      </span>
					    </div>
					    <div class='column_item'>
					       <span>
					      Producto ID
					      </span>
					    </div>
					    <div class='column_item'>
					       <span>
					      Descricción
					      </span>
					    </div>
					    <div class='column_item'>
					       <span>
					      En stock?
					      </span>
					    </div>
					    <div class='column_item'>
					       <span>
					      Cantidad
					      </span>
					    </div>
					    <div class='column_item'>
					       <span>
					      Precio
					      </span>
					    </div>
					    <div class='column_item'>
					     <span>
					      Total
					      </span>
					      
					    </div>
					   <c:if test="${cart.numberOfItems != 0}">
							<div class='column_item'>
							</div>
						</c:if>
					  </div>
			<c:forEach var="cartItem" items="${cart.cartItemList.pageList}"
			varStatus="loopStatus">
				
					    
					
					  <div class='row_item item_border'>
					    <div class='column_item'>
					      <span><c:out value="${cartItem.item.itemId}" /></span>
					    </div>
					    <div class='column_item'>
					      <span><c:out value="${cartItem.item.productId}" /></span>
					    </div>
					    <div class='column_item'>
					      <span><c:out value="${cartItem.item.attribute1}" /> <c:out
								value="${cartItem.item.attribute2}" /> <c:out
								value="${cartItem.item.attribute3}" /> <c:out
								value="${cartItem.item.attribute4}" /> <c:out
								value="${cartItem.item.attribute5}" /> <c:out
								value="${cartItem.item.product.name}" /></span>
					    </div>
					    <div class='column_item'>
					      <span><c:out value="${cartItem.inStock}" /></span>
					    </div>
					    <div class='column_item'>
					      <span><input class="input_quantity" type="text" size="3" class="card"
							name="<c:out value="${cartItem.item.itemId}"/>"
							value="<c:out value="${cartItem.quantity}"/>" /></span>
					    </div>
					    <div class='column_item'>
					      <span><fmt:formatNumber value="${cartItem.item.listPrice}"
								pattern="$#,##0.00" /></span>
					    </div>
					    <div class='column_item'>
					      <span><fmt:formatNumber value="${cartItem.totalPrice}"
								pattern="$#,##0.00" /></span>
					    </div>
					    <div class='column_item'>
					    	<span><a
							href="<c:url value="/shop/removeItemFromCart.do"><c:param name="workingItemId" value="${cartItem.item.itemId}"/></c:url>">
								<span class="button_table">Eliminar</span>
						</a></span>
					    </div>
					   
					  </div>
					  
				
			</c:forEach>
					<div class='row_item'>
					    <div class='column_item'>
					      <span>
					      Sub Total: <fmt:formatNumber
							value="${cart.subTotal}" pattern="$#,##0.00" />
					      </span>
					    </div>
					    <c:if test="${cart.numberOfItems != 0}">
						<div class='column_item'>
					       <span class="button_table"><input type="submit" class="submit_button not_border" value="Actualizar" name="update" />  </span>
					    </div>
						</c:if>
					    
					     
					    
					</div>
			</div>
		<!-- <table id="shop_table"> 
			<tr>
				<th>Item ID</th>
				<th>Product ID</th>
				<th>Description</th>
				<th>In Stock?</th>
				<th>Quantity</th>
				<th>List Price</th>
				<th>Total Cost</th>
				<c:if test="${cart.numberOfItems != 0}">
					<th></th>
				</c:if>
			</tr>

			<c:if test="${cart.numberOfItems == 0}">
				<tr>
					<td colspan="8"><b>Your cart is empty.</b></td>
				</tr>
			</c:if>

			<c:forEach var="cartItem" items="${cart.cartItemList.pageList}"
				varStatus="loopStatus">
				<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
					<td><b> 
<%-- 					<a href="<c:url value="/shop/viewItem.do"><c:param name="itemId" value="${cartItem.item.itemId}"/></c:url>">	</a> --%>
						<c:out value="${cartItem.item.itemId}" />
						</b></td>
					<td><c:out value="${cartItem.item.productId}" /></td>
					<td><c:out value="${cartItem.item.attribute1}" /> <c:out
							value="${cartItem.item.attribute2}" /> <c:out
							value="${cartItem.item.attribute3}" /> <c:out
							value="${cartItem.item.attribute4}" /> <c:out
							value="${cartItem.item.attribute5}" /> <c:out
							value="${cartItem.item.product.name}" /></td>
					<td><c:out value="${cartItem.inStock}" /></td>
					<td><input type="text" size="3"
						name="<c:out value="${cartItem.item.itemId}"/>"
						value="<c:out value="${cartItem.quantity}"/>" /></td>
					<td><fmt:formatNumber value="${cartItem.item.listPrice}"
							pattern="$#,##0.00" /></td>
					<td><fmt:formatNumber value="${cartItem.totalPrice}"
							pattern="$#,##0.00" /></td>
					<td><a
						href="<c:url value="/shop/removeItemFromCart.do"><c:param name="workingItemId" value="${cartItem.item.itemId}"/></c:url>">
							<span class="button_table">Remove</span>
					</a></td>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="7" class="table_total">Sub Total: <fmt:formatNumber
						value="${cart.subTotal}" pattern="$#,##0.00" />
				</th>
				<c:if test="${cart.numberOfItems != 0}">
					<th><input type="submit" value="Update" name="update" /></th>
				</c:if>
			</tr>
		</table>-->
		<div>
			<c:if test="${!cart.cartItemList.firstPage}">
				<a href="<c:url value="viewCart.do?page=previousCart"/>"><font
					color="green"><B>&lt;&lt; Prev</B></font></a>
			</c:if>
			<c:if test="${!cart.cartItemList.lastPage}">
				<a href="<c:url value="viewCart.do?page=nextCart"/>"><font
					color="green"><B>Next &gt;&gt;</B></font></a>
			</c:if>
		</div>
	</form>
	<c:if test="${cart.numberOfItems > 0}">
		<div class="checkout_btn">
			<a class="checkout_btn" href="<c:url value="/shop/checkout.do"/>"><span
				class="button_table">Realizar pago</span></a>
		</div>
	</c:if>
</div>


<%@ include file="IncludeBottom.jsp"%>
