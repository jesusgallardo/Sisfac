<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
<!-- 				<div class="page-title"> -->
<!-- 					<h1>Administracion<small> Pruductos</small></h1> -->
<!-- 				</div> -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="javascript:;">Administración</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Productos
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->

			<!-- FORMULARIO AGREGAR PRODUCTO -->
			<div id="add_Product">
				<%@ include file="/WEB-INF/views/auth/catalog/product/add.jsp"%>
			</div>
			<!-- TERMINA FORMULARIO AGREGAR PRODUCTO -->
			
			<!-- LISTA PRODUCTO -->
			<div id="list_Product">
				<%@ include file="/WEB-INF/views/auth/catalog/product/list.jsp"%>
			</div>
			<!-- TERMINA LISTA PRODUCTO -->			

	
	