<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="RideXpress_StarterKit.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-9">
                    <h1>Incident Report List</h1>
                </div>
                <div class="col-xs-3">
                    <a href="~/AddReport.aspx" runat="server" class="btn btn-success" data-toggle="popover" data-title="New Report - Dive 4"
                        data-content="Click here to see the New Incident Report Form. Refer to the Dive 4 Instructions Document" data-trigger="hover"
                        data-placement="bottom">Create New Incident Report</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <asp:GridView ID="ReportList" runat="server" CssClass="table table-bordered text-left"
                        AutoGenerateColumns="false" OnRowDeleting="ReportList_RowDeleting" DataKeyNames="ReportID">
                        <Columns>
                            <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="ReportID"
                                DataNavigateUrlFormatString="~/EditReport.aspx?ReportID={0}" controlStyle-CssClass="btn btn-success btn-xs"
                                ItemStyle-CssClass="text-center" />
                            <asp:TemplateField ItemStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="DeleteButton" CommandName="Delete"
                                        CssClass="btn btn-xs btn-default" Text="Delete"
                                        OnClientClick="if(!confirm('Are you sure you wish to delete this report?')) return false;" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ReportID" HeaderText="Report ID" />
                            <asp:BoundField DataField="CarID" HeaderText="Car ID" />
                            <asp:BoundField DataField="ReportDescription" HeaderText="Report Description" />
                            <asp:BoundField DataField="DateOfIncident" HeaderText="Incident Date" />
                            <asp:BoundField DataField="CarName" HeaderText="Car Name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
