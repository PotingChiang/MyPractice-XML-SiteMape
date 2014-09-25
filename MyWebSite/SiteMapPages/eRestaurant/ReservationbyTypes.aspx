<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReservationbyTypes.aspx.cs" Inherits="SiteMapPages_eRestaurant_ReservationbyTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>ReservationbyTypes</h1>
    <h2>Special Event</h2>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="description" DataValueField="eventCode" AppendDataBoundItems="True">
        <asp:ListItem Value="">Select Event</asp:ListItem>
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SpecialEvent_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server">Refresh Reservation List</asp:LinkButton>
    <br />
    <h2>Reservations</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource3" PageSize="5">
        <AlternatingRowStyle BackColor="#6699FF" />
        <Columns>
            <asp:BoundField DataField="reservationID" HeaderText="ID" ReadOnly="True" SortExpression="reservationID" />
            <asp:BoundField DataField="customerName" HeaderText="Name" SortExpression="customerName" />
            <asp:BoundField DataField="reservationDate" HeaderText="Date" SortExpression="reservationDate" DataFormatString="{0:MMM-DD, YYYY}" />
            <asp:TemplateField HeaderText="#InParty" SortExpression="numberInParty">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("numberInParty") %>'
                         Columns="3"></asp:TextBox>
                <%--</EditItemTemplate>
                <ItemTemplate>--%>
                    <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("numberInParty") %>'></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact #">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("ContactPhone") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="reservationStatus" HeaderText="Status" SortExpression="reservationStatus" />
            <asp:BoundField DataField="eventCode" HeaderText="eventCode" ReadOnly="True" SortExpression="eventCode" />
        </Columns>
        <EmptyDataTemplate>
            No Data Available this time !
        </EmptyDataTemplate>
        <PagerSettings FirstPageText="FirstPage" LastPageText="LastPage" Mode="NumericFirstLast" NextPageText="Next" PageButtonCount="6" PreviousPageText="Back" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ReservationList" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
    <br />
    <h3>Special Events Active Check</h3>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="eventCode" HeaderText="eventCode" SortExpression="eventCode" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:TemplateField HeaderText="Active">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Active") %>' /> <%--none - case sensitive--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ReservationByEvent" TypeName="eRestaurantSystem.BLL.eRestaurantController">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="eventCode" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

