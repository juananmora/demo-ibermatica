<%@ include file="IncludeTop.jsp" %>


<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Main Menu</a>
		<!-- <a href="<c:url value="/shop/viewCart.d"/>">&lt;&lt; Shopping Cart</a>-->
	</div>

<div class="title">
		<h2>Checkout Summary</h2>
	</div>
	<form action="<c:url value="/shop/updateCartQuantities.do"/>"
		method="post">
		<div class='item-wrapper-checkout'>
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
					      Descripcción
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
					      <span><c:out value="${cartItem.quantity}"/></span>
					    </div>
					    <div class='column_item'>
					      <span><fmt:formatNumber value="${cartItem.item.listPrice}"
								pattern="$#,##0.00" /></span>
					    </div>
					    <div class='column_item'>
					      <span><fmt:formatNumber value="${cartItem.totalPrice}"
								pattern="$#,##0.00" /></span>
					    </div>
					    
					   
					  </div>
					  
				
			</c:forEach>
			<div class='row_item '>
				<div class='column_item'>
					      <span>Sub Total: <fmt:formatNumber
						value="${cart.subTotal}" pattern="$#,##0.00" /></span>
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
			</tr>

			<c:forEach var="cartItem" items="${cart.cartItemList.pageList}"
				varStatus="loopStatus">
				<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
					<td><c:out value="${cartItem.item.itemId}" /></td>
					<td><c:out value="${cartItem.item.productId}" /></td>
					<td><c:out value="${cartItem.item.attribute1}" /> <c:out
							value="${cartItem.item.attribute2}" /> <c:out
							value="${cartItem.item.attribute3}" /> <c:out
							value="${cartItem.item.attribute4}" /> <c:out
							value="${cartItem.item.attribute5}" /> <c:out
							value="${cartItem.item.product.name}" /></td>
					<td><c:out value="${cartItem.inStock}" /></td>
					<td><c:out value="${cartItem.quantity}"/></td>
					<td><fmt:formatNumber value="${cartItem.item.listPrice}"
							pattern="$#,##0.00" /></td>
					<td><fmt:formatNumber value="${cartItem.totalPrice}"
							pattern="$#,##0.00" /></td>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="7" class="table_total">
				</th>
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
			<a href="<c:url value="/shop/newOrder.do"/>"><span
				class="button_table">Continuar</span></a>
		</div>
	</c:if>
</div>


<div id="footbar-checkout" class="container-wrapper">
	
		
				
		<div  class="container-wrapper-footbar-logo">
				<ul class = "footer_condictions">
					<li class="li_conditions"><img class="logo" src="../imagesIber/logo-ib.png" title="Ibermatica" alt="Ibermatica"></li>
					<li class="li_conditions">©<strong>Ibermática 2021</strong></li>
					<li class="li_conditions"><a class="enlacefooter" href="#">Política de privacidad y Aviso legal</a></li>
					<li class="li_conditions"><a class="enlacefooter" href="#">Accesibilidad</a></li>
					<li class="li_conditions"><a class="enlacefooter" title="Descarga el código de conducta (abre en ventana nueva)" href="https://ibermatica.com/wp-content/uploads/sites/4/2021/04/Ibermatica-Codigo-Conducta.pdf" target="_blank" rel="noopener noreferrer">Código de conducta</a></li>
					<li class="li_conditions"><a class="enlacefooter" title="Descarga el informe (abre en ventana nueva)" href="https://ibermatica.com/wp-content/uploads/sites/4/2021/04/Grupo-Ibermatica-Estado-Informacion-No-Financiera-2020.pdf" target="_blank" rel="noopener noreferrer">Estado de Información No Financiera </a></li>
					<li class="li_conditions"><a class="enlacefooter" href="/accionistas-informacion-corporativa">Accionistas / Información corporativa</a></li>
				</ul>
	
		</div>
		
		<!--<div class="end-logo">
			<img class="logo" src="img-minsait/minsait_endlogo_white.svg" title="Minsait" alt="Minsait">
		</div>-->
		 
</div>
<script type="text/javascript">
	window.onload = function() {
		document.getElementsByTagName("html")[0].style.display="block"
		}
</script>
</body>
</html>


