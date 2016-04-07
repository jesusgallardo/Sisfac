<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
  				<div class="page-title">  
  					<h1>Catalogo de  Ventas</h1> 
 				</div>  
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="javascript:;">Administración</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Ventas
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->

			<!-- FORMULARIO AGREGAR VENTAS -->
			<div id="add_Sale">
				<%@ include file="/WEB-INF/views/auth/catalog/sale/add.jsp"%>
			</div>
			<!-- TERMINA FORMULARIO AGREGAR VENTAS -->
			
			<!-- LISTA VENTAS -->
			<div id="list_Sale">
				<%@ include file="/WEB-INF/views/auth/catalog/sale/list.jsp"%>
			</div>
			<!-- TERMINA LISTA VENTAS -->			

	
	