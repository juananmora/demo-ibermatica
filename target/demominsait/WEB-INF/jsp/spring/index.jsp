<%@ include file="IncludeTop.jsp"%>

<div class="content margin_content">
	<div id="categories">
		<div class="card">
			<div class="card_img category_product">
				<a id="coche_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=coche"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<a class="card_title card_products" href="<c:url value="/shop/viewCategory.do?categoryId=coche"/>"><span>Coche el&eacute;ctrico</span></a>
					<br>
					<p>Modelos de actualidad con precios atractivos</p>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card_img category_service">
				<a id="services_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=moto"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<a class="card_title card_services" href="<c:url value="/shop/viewCategory.do?categoryId=moto"/>">Moto el&eacute;ctrica</a>
					<br>
					<p>Dos rudeas para moverte con seguridad y confort</p>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card_img category_assets">
				<a id="assets_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=avion"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<a class="card_title card_assets " href="<c:url value="/shop/viewCategory.do?categoryId=avion"/>">Avi&oacute;n el&eacute;ctrico</a>
					<br>
					<p>Llega como el rayo, haciendo tus escalas, a cualquier parte</p>
				</div>
			</div>
		</div>
	</div>
</div>



<%@ include file="IncludeBottom.jsp"%>
