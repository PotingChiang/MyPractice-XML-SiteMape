<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SpecialEvents.aspx.cs" Inherits="SiteMapPages_eRestaurant_SpecialEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Special Evets</h1>
    <asp:DropDownList ID="DropDownListSpecialEvents" runat="server" DataSourceID="ObjectDataSourceSpecialEvents" DataTextField="description" DataValueField="eventCode"></asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSourceSpecialEvents" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SpecialEvent_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
</asp:Content>

