<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>
import org.springframework.web.bind.annotation.ModelAttribute;
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="portlet box blue" id="form_wizard_1">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> <spring:message code="application.pages.admin.sale.title"/> - <span class="step-title">
								Paso 1 de 2 </span>
							</div>
							<div class="tools hidden-xs">
								<a href="javascript:;" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="auth/cat/sale/add?id=${sale.id}" class="form-horizontal" id="submit_form"  modelAttribute="submit_form" method="POST"  novalidate="novalidate">
								<div class="form-wizard">
									<div class="form-body">

										<ul class="nav nav-pills nav-justified steps">
											<li>
					  							<a href="#tab1" data-toggle="tab" class="step">
												<span class="number">
												1 </span>
												<span class="desc">
												<i class="fa fa-check"></i> Datos Venta </span>
												</a>
											</li>
											<li>
												<a href="#tab3" data-toggle="tab" class="step">
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
												<h3 class="block">Proporcionar Datos de Venta</h3>
												<div class="form-body">
																									
												
												    <div class="form-group form-md-line-input has-danger">
										                <label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.users.selectPerson"/>
										                    <span class="required">* </span> 
										                </label>
										                <div class="col-md-4">
										                    <div class="input-icon">
											             	<form:select path="sale.person.id"  name="person" class="form-control">
												            <form:option value="" label="Seleccione..."/>
	    										            <form:options items="${personList}" />
												            </form:select>
												            <div class="form-control-focus"></div>
												            <span id="person-error" class="help-block help-block-error">
													        <spring:message code="application.pages.admin.users.selectPerson"/>
												            </span>
												            <i class="icon-user"></i>
										                    </div>
										               </div>
										           </div>
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.sale.secondName"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input name="date"  id="date" value="${sale.date}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.sale.secondName.placeholder"/>' aria-required="true" aria-describedby="datee-error" aria-invalid="true" 
																aria-required="true" aria-describedby="date-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="secondName-error" class="help-block help-block-error"><spring:message code="application.pages.admin.sale.secondName.help"/></span>
																
															</div>
														</div>
													</div>
													
																								
													<div class="form-group form-md-line-input has-danger">
										                <label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.sale.motherLastName"/>
										                    <span class="required">* </span> 
										                </label>
										                <div class="col-md-4">
										                    <div class="input-icon">
											             	<form:select path="sale.product.id"  name="product" class="form-control">
												            <form:option value="" label="Seleccione..."/>
	    										            <form:options items="${productList}" />
												            </form:select>
												            <div class="form-control-focus"></div>
												            <span id="product-error" class="help-block help-block-error">
													        <spring:message code="application.pages.admin.sale.motherLastName.help"/>
												            </span>
												            <i class="icon-user"></i>
										                    </div>
										               </div>
										           </div>
														
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.sale.extension"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="subTotal" name="subTotal" value="${sale.subTotal}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.sale.extension.placeholder"/>'
																aria-required="true" aria-describedby="name-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="telephone-error" class="help-block help-block-error"><spring:message code="application.pages.admin.sale.extension.help"/></span>
																
															</div>
														</div>
													</div>
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.sale.telephone"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="total" name="total" value="${sale.total}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.sale.telephone.placeholder"/>'
																aria-required="true" aria-describedby="name-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="telephone-error" class="help-block help-block-error"><spring:message code="application.pages.admin.sale.telephone.help"/></span>
																
															</div>
														</div>
													</div>	
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.sale.mobileTelepone"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="commission" name="commission" value="${sale.commission}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.sale.mobileTelepone.placeholder"/>'>
																<div class="form-control-focus">
																</div>
																<span id="mobileTelepone-error" class="help-block help-block-error"><spring:message code="application.pages.admin.sale.mobileTelepone.help"/></span>
																<i class="icon-phone"></i>
															</div>
														</div>
													</div>
													
														 																				
											    	</div>
											</div>
											
											
											<div class="tab-pane" id="tab2">
												<h3 class="block">Confirmación</h3>
	
												
									            <h4 class="form-section">Datos Factura</h4>
									            <div class="form-group">
										            <label class="control-label col-md-3"><spring:message
													code="application.pages.admin.sale.name" />
													</label>
										            <div class="col-md-4">
											           <p class="form-control-static" data-display="name"></p>
										            </div>
									            </div>
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.sale.secondName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="secondName"></p>
										           </div>
									            </div>	
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.sale.fatherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="fatherLastName"></p>
										           </div>
									            </div>		
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.sale.motherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="motherLastName"></p>
										           </div>
									            </div>		
									           
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.sale.telephone" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="telephone"></p>
										           </div>
									            </div>	
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.sale.extension" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="extension"></p>
										           </div>
									            </div>									            
																						
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
											   <c:choose>
											        <c:when test="${(sale.id!=null)}">
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
												<button type="button" class="btn green button-submit" id="submitRequestForm"><spring:message code="application.pages.cat.sale.crear"/></button>
						
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

