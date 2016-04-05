<%@ include file="/WEB-INF/views/auth/common/springTags.jsp"%>

			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="portlet box blue" id="form_wizard_1">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> <spring:message code="application.pages.admin.bill.title"/> - <span class="step-title">
								Paso 1 de 2 </span>
							</div>
							<div class="tools hidden-xs">
								<a href="javascript:;" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="auth/cat/bill/add?id=${bill.id}" class="form-horizontal" id="submit_form"  modelAttribute="submit_form" method="POST"  novalidate="novalidate">
								<div class="form-wizard">
									<div class="form-body">

										<ul class="nav nav-pills nav-justified steps">
											<li>
												<a href="#tab1" data-toggle="tab" class="step">
												<span class="number">
												1 </span>
												<span class="desc">
												<i class="fa fa-check"></i> Datos Factura </span>
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
												<h3 class="block">Proporcionar Datos de Factura</h3>
												<div class="form-body">													
													
													
													<div class="form-group form-md-line-input">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.name"/>
															<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="numBill" name="numBill" value="${bill.numBill}" type="text" class="form-control" aria-required="true" aria-describedby="numBill-error" aria-invalid="true"  placeholder='<spring:message code="application.pages.admin.bill.name.placeholder"/>'>
																<div class="form-control-focus">
																</div>
																<span id="numBill-error" class="help-block help-block-error">
																<spring:message code="application.pages.admin.bill.name.help"/>
																</span>
																
															</div>
														</div>
													</div>
																					
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.fatherLastName"/> 
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input name="folioFiscal"  id="folioFiscal" value="${bill.folioFiscal}" type="text"  class="form-control" placeholder='<spring:message code="application.pages.admin.bill.fatherLastName.placeholder"/>'>
																<div class="form-control-focus">
																</div>																				
 																<span id="folioFiscal-error" class="help-block help-block-error"><spring:message code="application.pages.admin.bill.fatherLastName.help"/></span> 
															    
															</div>
														</div>
													</div>
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.motherLastName"/> 
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input name="nuSeriesTransmitter"  id="nuSeriesTransmitter" value="${bill.nuSeriesTransmitter}" type="text"  class="form-control" placeholder='<spring:message code="application.pages.admin.bill.motherLastName"/>'>
																<div class="form-control-focus">
																</div>																				
 																<span id="provider" class="help-block help-block-error"><spring:message code="application.pages.admin.bill.motherLastName"/></span> 
															    <i class="fa fa-male"></i>
															</div>
														</div>
													</div>												
																		
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.telephone"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="subTotal" name="subTotal" value="${bill.subTotal}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.bill.telephone.placeholder"/>'
																aria-required="true" aria-describedby="name-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="subTotal-error" class="help-block help-block-error"><spring:message code="application.pages.admin.bill.telephone.help"/></span>
																
															</div>
														</div>
													</div>
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.extension"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="iva" name="iva" value="${bill.iva}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.bill.extension.placeholder"/>'
																aria-required="true" aria-describedby="iva-error" aria-invalid="true">
																<div class="form-control-focus">
																</div>
																<span id="iva-error" class="help-block help-block-error"><spring:message code="application.pages.admin.bill.extension.help"/></span>
																
															</div>
														</div>
													</div>	
													
													<div class="form-group form-md-line-input has-danger">
														<label class="col-md-2 control-label" for="form_control_1"><spring:message code="application.pages.admin.bill.mobileTelepone"/>
														<span class="required">* </span>
														</label>
														<div class="col-md-10">
															<div class="input-icon">
																<input id="total" name="total" value="${bill.total}" type="text" class="form-control" placeholder='<spring:message code="application.pages.admin.bill.mobileTelepone.placeholder"/>'>
																<div class="form-control-focus">
																</div>
																<span id="total-error" class="help-block help-block-error"><spring:message code="application.pages.admin.bill.mobileTelepone.help"/></span>
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
													code="application.pages.admin.bill.name" />
													</label>
										            <div class="col-md-4">
											           <p class="form-control-static" data-display="name"></p>
										            </div>
									            </div>
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.secondName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="secondName"></p>
										           </div>
									            </div>	
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.fatherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="fatherLastName"></p>
										           </div>
									            </div>		
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.motherLastName" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="motherLastName"></p>
										           </div>
									            </div>		
									        				             
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.telephone" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="telephone"></p>
										           </div>
									            </div>	
									            
									            
									            <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.mobileTelepone" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="mobileTelepone"></p>
										           </div>
									            </div>	
									         		
									           <div class="form-group">
										           <label class="control-label col-md-3"><spring:message
													  code="application.pages.admin.bill.extension" />
											       </label>
										           <div class="col-md-4">
											         <p class="form-control-static" data-display="mobileTelepone"></p>
										           </div>
									            </div>								            
																						
											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
											   <c:choose>
											        <c:when test="${(bill.id!=null)}">
											           <a href="javascript:initBillList();" class="btn red" >
													   <spring:message code="application.cancel"/> <i class="fa fa-times"></i>
													   </a>  
													 </c:when>   
									              <c:otherwise>		
											           <a href="javascript:showList('Bill');" class="btn red" >
													   <spring:message code="application.cancel"/> <i class="fa fa-times"></i>
													   </a>  	
									              </c:otherwise>
									            </c:choose>	

												<a href="javascript:;" class="btn default button-previous">
												<i class="m-icon-swapleft"></i> <spring:message code="application.back"/> </a>
												<a href="javascript:;" class="btn blue button-next">
												<spring:message code="application.next"/> <i class="m-icon-swapright m-icon-white"></i>
												</a>
												<button type="button" class="btn green button-submit" id="submitRequestForm"><spring:message code="application.pages.cat.bill.crear"/></button>
						
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

