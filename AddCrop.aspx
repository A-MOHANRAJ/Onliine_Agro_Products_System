﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Layout_Admin.Master" AutoEventWireup="true" CodeBehind="AddCrop.aspx.cs" Inherits="Onliine_Agro_Products_System.AddCrop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .mydatagrid
{
width: 80%;
border: solid 2px black;
min-width: 80%;
}
.header
{
background-color: #646464;
font-family: 'Trebuchet MS';
color: White;
border: none 0px transparent;
height: 25px;
text-align: center;
font-size: 14px;
}

.rows
{
background-color: #fff;
font-family: 'Trebuchet MS';
font-size: 13px;
color: #000;
min-height: 25px;
text-align: left;
border: none 0px transparent;
}
.rows:hover
{
background-color: moccasin;
font-family: 'Trebuchet MS';
color: #fff;
text-align: left;
}
.selectedrow
{
background-color: #ff8000;
font-family: 'Trebuchet MS';
color: #fff;
font-weight: bold;
text-align: left;
}
.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #bf2020;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
background-color: #000;
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{

color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #646464;
font-family: 'Trebuchet MS';
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{
padding: 5px;
}
.mydatagrid th
{
padding: 5px;
}
 
          .auto-style1 {
             
              min-width: 80%;
          }
    </style>

    <script type="text/javascript">
        function ValidateAll() {
         
            var title = document.getElementById("<%= txtTitle.ClientID %>");
          
            if (title.value == "") {
                alert("Please Enter Title");
                title.focus();
                return false;
            }
                    
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>Master Crops<asp:Button id="btnAddTips" runat="server" OnClick="btnAddTips_Click" text="Add Crop" style="font-weight:bold;margin-left:320px" /></h3> 
  <asp:panel id="pnlAddTips" runat="server" visible="false">
       <table >
        
            
            <tr>
                <td class="auto-style1"><strong style="width:170px!important">Crop Name<span style="color:red"> *</span></strong></td>
                <td><strong><asp:TextBox ID="txtTitle" runat="server" Width="247px" Height="26px"></asp:TextBox></strong></td>
            </tr>                            
          <tr>
                <td colspan="2">
                    <span style="color:red"> * marked fields are mandatory</span> .
                </td>
            </tr>

            <tr>
                  <td></td>
                <td ><strong><asp:Button ID="btnRegister" Text="Save" runat="server" Width="83px"  style="font-weight: 700" OnClick="btnRegister_Click" OnClientClick="return ValidateAll()" /></strong></td>             
            </tr>
            <tr>
                <td colspan="2">
                    <strong>
                  <br />  <asp:Label runat="server" ID="lblMsg" style="color:green"></asp:Label>
                    </strong>
                </td>
            </tr>
           
        </table>
  </asp:panel>
    <asp:Panel ScrollBars="Horizontal" style="width:555px" runat="server">
<asp:GridView ID="gridProduct" runat="server" AutoGenerateColumns="false" ShowFooter="false" PageSize="10" 
    AllowPaging="true"  CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
    EmptyDataText="No Records Found" OnPageIndexChanging="gridProduct_PageIndexChanging" Width="533px">
        <Columns>
    <asp:TemplateField HeaderText="S.No" ItemStyle-Width="7px">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>  

            <asp:TemplateField ItemStyle-Width="50px" HeaderText="Crop Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server"
                        Text='<%#Eval("Crop_Name")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
        <asp:Label ID="lblEmptyTxt" runat="server" Text="No Data Found"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
        </asp:Panel>
</asp:Content>
