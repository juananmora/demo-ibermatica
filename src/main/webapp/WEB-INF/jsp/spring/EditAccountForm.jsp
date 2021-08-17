<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="content-confirm">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Main Menu</a>
	</div>

	<!-- Support for Spring errors object -->
	<spring:bind path="accountForm.*">
		<c:forEach var="error" items="${status.errorMessages}">
			<B><FONT color=RED> <BR> <c:out value="${error}" />
			</FONT></B>
		</c:forEach>
	</spring:bind>

	<c:if test="${accountForm.newAccount}">
		<form action="<c:url value="/shop/newAccount.do"/>" method="post">
	</c:if>
	<c:if test="${!accountForm.newAccount}">
		<form action="<c:url value="/shop/editAccount.do"/>" method="post">
	</c:if>

	<table id="shop_table">
		<tr>
			<td colspan=2>
				<p class="form_table_title">Información de usuario</p>
			</td>
		</tr>
		<tr>
			<td>Usuario ID:</td>
			<td><c:if test="${accountForm.newAccount}">
					<spring:bind path="accountForm.account.username">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind>
				</c:if> <c:if test="${!accountForm.newAccount}">
					<c:out value="${accountForm.account.username}" />
				</c:if></td>
		</tr>
		<tr>
			<td>Nueva password:</td>
			<td><spring:bind path="accountForm.account.password">
					<input type="password" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></td>
		</tr>
		<tr>
			<td>Repetir password:</td>
			<td><spring:bind path="accountForm.repeatedPassword">
					<input type="password" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></td>
		</tr>

		<tr>
			<td colspan=2>
				<p class="form_table_title">Account Information</p>
			</td>
		</tr>
		<TR>
			<TD>Nombre:</TD>
			<TD><spring:bind path="accountForm.account.firstName">
					<input type="text" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Apellido:</TD>
			<TD><spring:bind path="accountForm.account.lastName">
					<input type="text" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Email:</TD>
			<TD><spring:bind path="accountForm.account.email">
					<input type="text" size="40"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Teléfono:</TD>
			<TD><spring:bind path="accountForm.account.phone">
					<input type="text" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Dirección 1:</TD>
			<TD><spring:bind path="accountForm.account.address1">
					<input type="text" size="40"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Dirección 2:</TD>
			<TD><spring:bind path="accountForm.account.address2">
					<input type="text" size="40"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Ciudad:</TD>
			<TD><spring:bind path="accountForm.account.city">
					<input type="text" name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Estado:</TD>
			<TD><spring:bind path="accountForm.account.state">
					<input type="text" size="4"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>CP:</TD>
			<TD><spring:bind path="accountForm.account.zip">
					<input type="text" size="10"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>País:</TD>
			<TD><spring:bind path="accountForm.account.country">
					<input type="text" size="15"
						name="<c:out value="${status.expression}"/>"
						value="<c:out value="${status.value}"/>" />
				</spring:bind></TD>
		</TR>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Profile Information</p>
			</td>
		</tr>
		<TR>
			<TD>Idioma:</TD>
			<TD><spring:bind path="accountForm.account.languagePreference">
					<select class="select" name="<c:out value="${status.expression}"/>">
						<c:forEach var="language" items="${languages}">
							<option <c:if test="${language == status.value}">selected</c:if>
								value="<c:out value="${language}"/>">
								<c:out value="${language}" /></option>
						</c:forEach>
					</select>
				</spring:bind></TD>
		</TR>
		<TR>
			<TD>Categoría favorita:</TD>
			<TD><spring:bind path="accountForm.account.favouriteCategoryId">
					<select class="select" name="<c:out value="${status.expression}"/>">
						<c:forEach var="category" items="${categories}">
							<option
								<c:if test="${category.categoryId == status.value}">seleccionar</c:if>
								value="<c:out value="${category}"/>">
								<c:out value="${category.name}" /></option>
						</c:forEach>
					</select>
				</spring:bind></TD>
		</TR>
		<TR>
			<TD colspan=2><spring:bind path="accountForm.account.listOption">
					<input type="checkbox" name="<c:out value="${status.expression}"/>"
						value="true" <c:if test="${status.value}">checked</c:if>>
		Habilitar mi lista
  </spring:bind></TD>
		</TR>
		<TR>
			<TD colspan=2><spring:bind
					path="accountForm.account.bannerOption">
					<input type="checkbox" name="<c:out value="${status.expression}"/>"
						value="true" <c:if test="${status.value}">checked</c:if>>
		Habilitar mi banner
  </spring:bind></TD>
		</TR>
		<tr>
			<td colspan=2>
				<p class="checkout_btn form_table_title">
					<input type="submit" value=Guardar name="submit" />
				</p>
			</td>
		</tr>
	</table>
	</form>
	<!-- <center> -->
	<%-- 	<b><a href="<c:url value="/shop/listOrders.do"/>">My Orders</a></b> --%>
	<!-- </center> -->
</div>
<%@ include file="IncludeBottom.jsp"%>
