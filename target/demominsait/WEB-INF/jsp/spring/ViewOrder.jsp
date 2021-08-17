<%@ include file="IncludeTop.jsp"%>

<div class="content-confirm">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Menu</a>
	</div>


	<c:if test="${!empty message}">

		<div class="title">
			<h4>
				<c:out value="${message}" />
			</h4>
		</div>
	</c:if>

	<table id="shop_table">
		<tr>
			<td align="center" colspan="2"><font size="4"><b>Order
						#<c:out value="${order.orderId}" />
				</b></font> <br /> <font size="3"><b><fmt:formatDate
							value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" /></b></font></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Payment details</p>
			</td>
		</tr>
		<tr>
			<td>Tipo:</td>
			<td><c:out value="${order.cardType}" /></td>
		</tr>
		<tr>
			<td>Número tarjeta:</td>
			<td><c:out value="${order.creditCard}" /></td>
		</tr>
		<tr>
			<td>Fecha de expiración (MM/YYYY):</td>
			<td><c:out value="${order.expiryDate}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Dirección de facturación</p>
			</td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<td><c:out value="${order.billToFirstName}" /></td>
		</tr>
		<tr>
			<td>Apellidos:</td>
			<td><c:out value="${order.billToLastName}" /></td>
		</tr>
		<tr>
			<td>Dirección 1:</td>
			<td><c:out value="${order.billAddress1}" /></td>
		</tr>
		<tr>
			<td>Dirección 2:</td>
			<td><c:out value="${order.billAddress2}" /></td>
		</tr>
		<tr>
			<td>Ciudad:</td>
			<td><c:out value="${order.billCity}" /></td>
		</tr>
		<tr>
			<td>CP:</td>
			<td><c:out value="${order.billZip}" /></td>
		</tr>
		<tr>
			<td>País:</td>
			<td><c:out value="${order.billCountry}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Dirección de envío</p>
			</td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<td><c:out value="${order.shipToFirstName}" /></td>
		</tr>
		<tr>
			<td>Apellidos:</td>
			<td><c:out value="${order.shipToLastName}" /></td>
		</tr>
		<tr>
			<td>Dirección 1:</td>
			<td><c:out value="${order.shipAddress1}" /></td>
		</tr>
		<tr>
			<td>Dirección 2:</td>
			<td><c:out value="${order.shipAddress2}" /></td>
		</tr>
		<tr>
			<td>Ciudad:</td>
			<td><c:out value="${order.shipCity}" /></td>
		</tr>
		<tr>
			<td>CP:</td>
			<td><c:out value="${order.shipZip}" /></td>
		</tr>
		<tr>
			<td>País:</td>
			<td><c:out value="${order.shipCountry}" /></td>
		</tr>
		<tr>
			<td>Mensajero:</td>
			<td><c:out value="${order.courier}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Estado:</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table id="summary_table">
					<tr>
						<th>Artículo ID</th>
						<th>Descripción</th>
						<th>Cantidad</th>
						<th>Precio</th>
						<th>Total</th>
					</tr>
					<c:forEach var="lineItem" items="${order.lineItems}"
						varStatus="loopStatus">
						<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
							<td><c:out value="${lineItem.itemId}" /></td>
							<td><c:out value="${lineItem.item.attribute1}" /> <c:out
									value="${lineItem.item.attribute2}" /> <c:out
									value="${lineItem.item.attribute3}" /> <c:out
									value="${lineItem.item.attribute4}" /> <c:out
									value="${lineItem.item.attribute5}" /> <c:out
									value="${lineItem.item.product.name}" /></td>
							<td><c:out value="${lineItem.quantity}" /></td>
							<td align="right"><fmt:formatNumber
									value="${lineItem.unitPrice}" pattern="$#,##0.00" /></td>
							<td align="right"><fmt:formatNumber
									value="${lineItem.totalPrice}" pattern="$#,##0.00" /></td>
						</tr>
					</c:forEach>
					<tr>
						<th colspan="5" align="right">Total: <fmt:formatNumber
								value="${order.totalPrice}" pattern="$#,##0.00" /></th>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

<%@ include file="IncludeBottom.jsp"%>
