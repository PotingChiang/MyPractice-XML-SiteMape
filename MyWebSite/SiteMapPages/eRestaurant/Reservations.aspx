<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reservations.aspx.cs" Inherits="SiteMapPages_eRestaurant_Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Reservations</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" PageSize="5">
        <Columns>
            <asp:BoundField DataField="reservationID" HeaderText="reservationID" SortExpression="reservationID" />
            <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
            <asp:BoundField DataField="reservationDate" HeaderText="reservationDate" SortExpression="reservationDate" />
            <asp:BoundField DataField="numberInParty" HeaderText="numberInParty" SortExpression="numberInParty" />
            <asp:BoundField DataField="contactPhone" HeaderText="contactPhone" SortExpression="contactPhone" />
            <asp:BoundField DataField="reservationStatus" HeaderText="reservationStatus" SortExpression="reservationStatus" />
            <asp:BoundField DataField="eventCode" HeaderText="eventCode" SortExpression="eventCode" />
        </Columns>
        <PagerSettings FirstPageText="FirstPage" LastPageText="LastPage" Mode="NumericFirstLast" NextPageText="Next" PageButtonCount="6" PreviousPageText="Back" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ReservationList" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
</asp:Content>

