<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userGallery.aspx.cs" Inherits="ChurchWebPortal.userGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gallery">
	 <div class="container">
		 <h2 style="color: #0066ff; font-family: 'Times New Roman', Times, serif">Gallery </h2>
		 <div class="gallery-bottom">
             <asp:Repeater ID="RptGal" runat="server">   
                 <ItemTemplate>
             <div class="col-md-3 gallery-grid">
                 &nbsp;&nbsp;&nbsp;&nbsp;
			   <img  width="250px" height="200px" class="exampleimage"  src="<%#Eval("image_path") %>" alt=""/>	
                 </div>
                     </ItemTemplate>               				
             </asp:Repeater>
                 
				</div>								
		  </div>
</div>
    <asp:Image ID="Image1" runat="server" />
</asp:Content>
