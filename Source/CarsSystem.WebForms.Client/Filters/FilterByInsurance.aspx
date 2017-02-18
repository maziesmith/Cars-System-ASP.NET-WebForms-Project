﻿<%@ Page Language="C#" AutoEventWireup="true" Title="Filter by insurance page" MasterPageFile="~/Site.Master" CodeBehind="FilterByInsurance.aspx.cs" Inherits="CarsSystem.WebForms.Client.Filters.FilterByInsurance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-9 col-md-offset-1">
            <h1 class="text-center">All cars which insurance expires soon!</h1>
            <asp:GridView ID="FilterGridView" runat="server" AutoGenerateColumns="false" CssClass="col-md-offset-2 text-center">
                <Columns>
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" />
                    <asp:BoundField DataField="Model" HeaderText="Model" />
                    <asp:BoundField DataField="RegistrationNumber" HeaderText="Registration number" />
                    <asp:BoundField DataField="VINNumber" HeaderText="VIN number" />
                    <asp:BoundField DataField="ValidUntilAnnualCheckUp" HeaderText="Valid until" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-12 col-md-offset-2">
            <asp:Label ID="EmailSubjectLabel" runat="server" Text="Subject: "></asp:Label>
            <asp:TextBox ID="EmailSubjectTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="EmailContentLabel" runat="server" Text="Content:"></asp:Label>
            <asp:TextBox ID="EmailContentBox" runat="server"></asp:TextBox>
            <asp:Button ID="SendMailButton" runat="server" Text="Send e-mails to the filtered cars!" OnClick="SendMailButton_Click" />
        </div>
    </div>
</asp:Content>
