<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>

			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="portlet box blue" id="form_wizard_1">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> <spring:message code="application.pages.admin.product.title"/> - <span class="step-title">
								Paso 1 de 2 </span>
							</div>
							<div class="tools hidden-xs">
								<a href="javascript:;" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="auth/cat/product/add?id=${product.id}" class="form-horizontal" id="submit_form"  modelAttribute="submit_form" method="POST"  novalidate="novalidate">
								<div class="form-wizard">
									<div class="form-body">

										<ul class="nav nav-pills nav-justified steps">
											<li>
												<a href="#tab1" data-toggle="tab" class="step">
												<span class="number">
												1 </span>
												<span class="desc">
												<i class="fa fa-check"></i> Producto </span>
												</a>
											</li>
											<li>
												<a href="#tab2" data-toggle="tab" class="step">
												<span class="number">
												2 </span>
												<span class="desc">
												<i class="fa fa-check"></i>Confirmación </span>
												</a>
											</li>
											
										</ul>
										<div id="bar" class="progress progress-striped" role="progressbar">
											<div class="progress-bar progress-bar-success">
											</div>
										</div>
										<div class="tab-content">
										<!-- Se incluyen los DIV de alertamiento en formularios -->
											<%@ include file="/WEB-INF/views/auth/common/alertForm.jsp"%>

											<div class="tab-pane active" id="tab1">
												<h3 class="block">Proporcionar Datos Del Producto</h3>
												<div class="form-body">													
													
													
													<div class="form-group form-md-line-input">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.product.name"/>
															<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="description" name="description" value="${product.description}" type="text" class="form-control" aria-required="true" aria-describedby="description-error" aria-invalid="true"  placeholder='<spring:message code="application.pages.admin.product.name.placeholder"/>'>
																<div class="form-control-focus">
																</div>
																<span id="description-error" class="help-block help-block-error">
																<spring:message code="application.pages.admin.product.name.help"/>
																</span>
																<i class="icon-user"></i>
															</div>
														</div>
													</div>
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.product.secondName"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input name="price"  id="price" value="${product.price}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.product.secondName.placeholder"/>' aria-required="true" aria-describedby="price-error" aria-invalid="true" 
																aria-required="true" aria-describedby="name-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="price-error" class="help-block help-block-error"><spring:message code="application.pages.admin.product.secondName.help"/></span>
																<i class="icon-user"></i>
															</div>
														</div>
													</div>	
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.product.fatherLastName"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="code" name="code" value="${product.code}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.product.fatherLastName"/>'>
																<div class="form-control-focus">
																</div>
																<span id = "code-error" class="help-block help-block-error"><spring:message code="application.pages.admin.product.fatherLastName"/></span>
																<i class="fa fa-female"></i>
															</div>
														</div>
													</div>	
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.product.motherLastName"/> 
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input name="provider"  id="provider" value="${product.provider}" type="text"  class="form-control" placeholder='<spring:message code="application.pages.admin.product.motherLastName"/>'>
																<div class="form-control-focus">
																</div>																				
 																<span id="provider" class="help-block help-block-error"><spring:message code="application.pages.admin.product.motherLastName"/></span> 
															    <i class="fa fa-male"></i>
															</div>
														</div>
													</div>
										    	</div>
											</div>

	
											<div class="tab-pane" id="tab2">
												<h3 class="block">Confirmación</h3>
	
												
									            <h4 class="form-section">Datos Generales</h4>
									            <div class="form-group">
										            <label class="control-label col-md-3"><spring:message
													code="application.pages.admin.product.name" />
													</label>
										            <div class="col-md-4">
											           <p class="form-control-static" data-display="name"></p>
										            </div>
									            </div>
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.product.secondName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="secondName"></p>
										           </div>
									            </div>	
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.product.fatherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="fatherLastName"></p>
										           </div>
									            </div>		
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.product.motherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="motherLastName"></p>
										           </div>
									            </div>		
									         																	
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
											   <c:choose>
											        <c:when test="${(product.id!=null)}">
											           <a href="javascript:initList();" class="btn red" >
													   <spring:message code="application.cancel"/> <i class="fa fa-times"></i>
													   </a>  
													 </c:when>   
									              <c:otherwise>		
											           <a href="javascript:showList('');" class="btn red" >
													   <spring:message code="application.cancel"/> <i class="fa fa-times"></i>
													   </a>  	
									              </c:otherwise>
									            </c:choose>	

												<a href="javascript:;" class="btn default button-previous">
												<i class="m-icon-swapleft"></i> <spring:message code="application.back"/> </a>
												<a href="javascript:;" class="btn blue button-next">
												<spring:message code="application.next"/> <i class="m-icon-swapright m-icon-white"></i>
												</a>
												<button type="button" class="btn green button-submit" id="submitRequestForm"><spring:message code="application.pages.cat.product.crear"/></button>
						
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
