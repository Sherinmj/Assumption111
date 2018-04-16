<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="organizations.aspx.cs" Inherits="ChurchWebPortal.organizations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="agileinfo-wwd">
		<h3>Our Organizations are</h3>
		<div class="container">
			<div class="col-md-6 agileits-bottom-left text-center">
			<ul id="sti-menu" class="sti-menu">
				<li data-hovercolor="#fff">
					<a href="#">
						<h4 data-type="mText" class="sti-item">Mission Leauge</h4>
						<p data-type="sText" class="sti-item">Voluptatem quia voluptas</p>
						<i class="glyphicon glyphicon-lamp" aria-hidden="true"></i>
					</a>
				</li>
				<li data-hovercolor="#fff">
                    
					<a href="#">
						<h4 data-type="mText" class="sti-item">Yuvadeepthi</h4>
						<p data-type="sText" class="sti-item">Voluptatem quia voluptas</p>
						<i class="glyphicon glyphicon-saved" aria-hidden="true"></i>
					</a>
                   
				</li>
				<li data-hovercolor="#fff">
					<a href="#">                      
						<h4 data-type="mText" class="sti-item">Mathrujyothis</h4>
						<p data-type="sText" class="sti-item">Voluptatem quia voluptas</p>
						<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
                            
					</a>
				</li>
				<li data-hovercolor="#fff">
					<a href="#">
						<h4 data-type="mText" class="sti-item">Pithruvedhi</h4>
						<p data-type="sText" class="sti-item">Voluptatem quia voluptas</p>
						<i class="glyphicon glyphicon-bullhorn" aria-hidden="true"></i>
					</a>
				</li>				
			</ul>

			<div class="clearfix"></div>
		</div>
		<div class="col-md-6 wthree-bottom-right  grid">
				<figure class="effect-moses">
							<marquee><img src="church_images/12.jpg" alt="" />
                                </marquee>
							<%--<figcaption>
								<h4>Stylewell</h4>
								<p>voluptatem quia voluptas sit.</p>
							</figcaption>--%>			
				</figure>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

</asp:Content>
