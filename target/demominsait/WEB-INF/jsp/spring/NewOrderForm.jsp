<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="content-confirm">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/viewCart.do"/>">&lt;&lt; Carro de compra</a>
	</div>


	<!-- Support for Spring errors holder -->
	<spring:bind path="orderForm.*">
		<c:forEach var="error" items="${status.errorMessages}">
			<B><FONT color=RED> <BR>
				<c:out value="${error}" />
			</FONT></B>
		</c:forEach>
	</spring:bind>

	<form action="<c:url value="/shop/newOrder.do"/>" method="post">

		<table id="shop_table_confirm">
			<TR>
				<TD colspan=2>
					<p class="form_table_title">
						Detalles de pago
					</p>
				</TD>
			</TR>
			<TR>
				<TD>Tipo:</TD>
				<TD><spring:bind path="orderForm.order.cardType">
						<select class="select" name="<c:out value="${status.expression}"/>">
							<c:forEach var="cardType" items="${creditCardTypes}">
								<option <c:if test="${cardType == status.value}">selected</c:if>
									value="<c:out value="${cardType}"/>">
									<c:out value="${cardType}" /></option>
							</c:forEach>
						</select>
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Numero de tarjeta:</TD>
				<TD><spring:bind path="orderForm.order.creditCard">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Fecha de expiración (MM/YYYY):</TD>
				<TD><spring:bind path="orderForm.order.expiryDate">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD colspan=2>
					<p class="form_table_title">Dirección facturación</p>
				</TD>
			</TR>

			<TR>
				<TD>Nombre:</TD>
				<TD><spring:bind path="orderForm.order.billToFirstName">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Apellidos:</TD>
				<TD><spring:bind path="orderForm.order.billToLastName">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Dirección 1:</TD>
				<TD><spring:bind path="orderForm.order.billAddress1">
						<input type="text" size="40"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Dirección 2:</TD>
				<TD><spring:bind path="orderForm.order.billAddress2">
						<input type="text" size="40"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Ciudad:</TD>
				<TD><spring:bind path="orderForm.order.billCity">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>CP:</TD>
				<TD><spring:bind path="orderForm.order.billZip">
						<input type="text" size="10"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>País:</TD>
				<TD><spring:bind path="orderForm.order.billCountry">
						<input type="text" size="15"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>

			<TR>
				<TD colspan=2><spring:bind
						path="orderForm.shippingAddressRequired">
						<input type="checkbox"
							name="<c:out value="${status.expression}"/>" value="true"
							<c:if test="${status.value}">checked</c:if>>
		Enviar a diferentes direcciones...
  </spring:bind></TD>
			</TR>
			<tr>
				<td colspan=2>
					<p class="checkout_btn form_table_title">
						<input class="submit_button" type="submit" value=Guardar name="submit" />
					</p>
				</td>
			</tr>
		</TABLE>
	</form>

</div>

<%@ include file="IncludeBottom.jsp"%>
