<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="AddReport.aspx.cs" Inherits="RideXpress_StarterKit.AddReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>Add Report</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="CarIDLabel" runat="server" Text="Car ID"
                        AssociatedControlID="CarID" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="CarID" runat="server" CssClass="form-control" MaxLength="10" TextMode="SingleLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="CarIDRequired" runat="server" ErrorMessage="Car ID is required"
                                    ControlToValidate="CarID" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="NameLabel" runat="server" Text="Report Name"
                        AssociatedControlID="ReportName" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportName" runat="server" CssClass="form-control" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportNameRequired" runat="server" ErrorMessage="Report name is required"
                                    ControlToValidate="ReportName" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="ReportDescriptionLabel" runat="server" Text="Report Description"
                        AssociatedControlID="ReportDescription" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportDescription" runat="server" CssClass="form-control" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportDescriptionRequired" runat="server" ErrorMessage="Report description is required"
                                    ControlToValidate="ReportDescription" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="DateOfIncidentLabel" runat="server" Text="Incident Date"
                        AssociatedControlID="DateOfIncident" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" MaxLength="10" TextMode="SingleLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="IncidentReportRequired" runat="server" ErrorMessage="Incident date is required"
                                    ControlToValidate="DateOfIncident" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="AddReportButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            OnClick="ReportAddButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Reports.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
