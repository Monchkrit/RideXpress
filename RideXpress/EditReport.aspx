<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="EditReport.aspx.cs" Inherits="RideXpress_StarterKit.EditReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>Edit Report</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="ReportLabel" runat="server" Text="Report ID" 
                        AssociatedControlID="ReportID" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportID" runat="server" CssClass="form-control" MaxLength="100" TextMode="SingleLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportIDRequired" runat="server" ErrorMessage="Report ID is Required"
                                    ControlToValidate="ReportID" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="DateOfIncidentLabel" runat="server" Text="Date of Incident" 
                        AssociatedControlID="DateOfIncident" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" MaxLength="15" TextMode="DateTime"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportDateRequired" runat="server" ErrorMessage="The report needs an incident date"
                                    ControlToValidate="DateOfIncident" Display="Dynamic" ValidationGroup="AllValidators">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="CarIDLabel" runat="server" Text="Car Identification"
                        AssociatedControlID="CarID" CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="CarID" runat="server" CssClass="form-control" MaxLength="6" TextMode="Number"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="CarIDRequired" runat="server" ErrorMessage="The report needs a car ID"
                                    ControlToValidate="CarID" Display="Dynamic" ValidationGroup="AllValidator">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="ReportNameLabel" runat="server" Text="Report Name"
                        AssociatedControlID="ReportName"  CssClass="col-xs-4 control-label">
                    </asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportName" runat="server" CssClass="form-control" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="ReportNameRequired" runat="server" ErrorMessage="The report needs a name"
                                    ControlToValidate="ReportName" Display="Dynamic" ValidationGroup="AllValidator">
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
                                <asp:RequiredFieldValidator ID="ReportDescriptionRequired" runat="server" ErrorMessage="The report needs a description"
                                    ControlToValidate="ReportDescription" Display="Dynamic" ValidationGroup="AllValidator">
                                </asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="ReportEditButton" runat="server" Text="Submit" CssClass="btn btn-success" 
                            onClick="ReportEditButtonClick" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Reports.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
