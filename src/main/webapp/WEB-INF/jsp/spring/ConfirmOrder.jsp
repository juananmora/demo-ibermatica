<%@ include file="IncludeTop.jsp"%>

<div class="content-confirm">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/newOrder.do"/>">&lt;&lt; Comprobar orden</a>
	</div>

	<div class="title">
		<h4>Por favor, confirma los datos pulsando continuar</h4>
	</div>
	<table id="shop_table">
		<tr>
			<td align="center" colspan="2"><font size="4"><b>Order</b></font>
				<br /> <font size="3"><b><fmt:formatDate
							value="${orderForm.order.orderDate}"
							pattern="yyyy/MM/dd hh:mm:ss" /></b></font></td>
		</tr>

		<TR>
			<TD colspan=2>
				<p class="form_table_title">Billing address</p>
			</TD>
		</TR>
		<tr>
			<td>Nombre:</td>
			<td><c:out value="${orderForm.order.billToFirstName}" /></td>
		</tr>
		<tr>
			<td>Apellidos:</td>
			<td><c:out value="${orderForm.order.billToLastName}" /></td>
		</tr>
		<tr>
			<td>Dirección 1:</td>
			<td><c:out value="${orderForm.order.billAddress1}" /></td>
		</tr>
		<tr>
			<td>Dirección 2:</td>
			<td><c:out value="${orderForm.order.billAddress2}" /></td>
		</tr>
		<tr>
			<td>Ciudad:</td>
			<td><c:out value="${orderForm.order.billCity}" /></td>
		</tr>
		<tr>
			<td>CP:</td>
			<td><c:out value="${orderForm.order.billZip}" /></td>
		</tr>
		<tr>
			<td>País:</td>
			<td><c:out value="${orderForm.order.billCountry}" /></td>
		</tr>
		<TR>
			<TD colspan=2>
				<p class="form_table_title">Dirección de envío</p>
			</TD>
		</TR>
		<tr>
			<td>Nombre:</td>
			<td><c:out value="${orderForm.order.shipToFirstName}" /></td>
		</tr>
		<tr>
			<td>Apellido:</td>
			<td><c:out value="${orderForm.order.shipToLastName}" /></td>
		</tr>
		<tr>
			<td>Dirección 1:</td>
			<td><c:out value="${orderForm.order.shipAddress1}" /></td>
		</tr>
		<tr>
			<td>Dirección 2:</td>
			<td><c:out value="${orderForm.order.shipAddress2}" /></td>
		</tr>
		<tr>
			<td>Ciudad:</td>
			<td><c:out value="${orderForm.order.shipCity}" /></td>
		</tr>
		<tr>
			<td>CP:</td>
			<td><c:out value="${orderForm.order.shipZip}" /></td>
		</tr>
		<tr>
			<td>País:</td>
			<td><c:out value="${orderForm.order.shipCountry}" /></td>
		</tr>

		<tr>
			<td colspan=2 class="form_table_title">
				<p class="checkout_btn">
					<a href="<c:url value="/shop/newOrder.do?_finish=true"/>"><span
						class="button_table">Continuar</span></a>
				</p>
			</td>
		</tr>
	</table>

</div>
<%@ include file="IncludeBottom.jsp"%>
