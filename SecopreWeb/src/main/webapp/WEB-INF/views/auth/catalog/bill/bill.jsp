<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title"> 
 					<h1>Catalogo de Facturas</h1> 
 				</div>
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="javascript:;">Administración</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Facturas
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->

			<!-- FORMULARIO AGREGAR FACTURAS -->
			<div id="add_Bill">
				<%@ include file="/WEB-INF/views/auth/catalog/bill/add.jsp"%>
			</div>
			<!-- TERMINA FORMULARIO AGREGAR FACTURAS -->
			
			<!-- LISTA FACTURAS -->
			<div id="list_Bill">
				<%@ include file="/WEB-INF/views/auth/catalog/bill/list.jsp"%>
			</div>
			<!-- TERMINA LISTA FACTURA -->			

	
	