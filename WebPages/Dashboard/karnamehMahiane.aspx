﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="karnamehMahiane.aspx.cs" Inherits="WebPages.Dashboard.karnamehMahiane" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/simple-sidebar.css" rel="stylesheet" />
    <link href="Styles/AdminPanelStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="c-title">
        <h4>

            <asp:Literal runat="server" Text="کارنامه ماهیانه" />
        </h4>
    </div>
    <div class="x_content">
        <div class="row">
            <div class="col-md-4 hidden-xs">
                <label style="padding-top: 5px;">


                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    ماه
                </label>
            </div>
            <div class="col-md-4 col-xs-12 text-righ">
            </div>
            <div class="col-md-4 col-xs-12 text-righ pull-right" style="float: right">
            </div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div id="ContentPlaceHolder1_upGrid">

            <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="gvLessonGroups" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False"
                            CssClass="dirRight table" HorizontalAlign="Center" OnRowDataBound="gvLessonGroups_RowDataBound" AllowPaging="false" EnableSortingAndPagingCallbacks="True" PageSize="5">
                            <Columns>
                                <asp:BoundField DataField="LessonTitle" HeaderText="عنوان درس" />
                                <asp:BoundField DataField="Unit" HeaderText="<%$ Resources:Dashboard,Unit%>" />
                                <asp:BoundField DataField="teacherFullname" HeaderText="<%$ Resources:Dashboard,TeacherFName%>" />
                                <asp:BoundField DataField="Nomre" HeaderText="نمره" />
                                <asp:BoundField DataField="sDate" HeaderText="تاریخ جلسه" />
                                <asp:BoundField DataField="SessionNum" HeaderText="شماره جلسه" />
                                <asp:BoundField DataField="exam" HeaderText="نوع امتحان" />

                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Justify">
                                    <ItemTemplate>
                                    </ItemTemplate>

                                    <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle"></ItemStyle>
                                </asp:TemplateField>
                            </Columns>

                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="form-group">
            <div class="row">

                <div class="col-xs-12 col-sm-3  text-right dirRight goLeft" style="float: right">
                    <span id="iii" class="control-label formLabel" style="color: #666666; font-size: 100%; font-weight: bold;">
                        <asp:Literal runat="server" Text="میانگین نمرات" /></span>
                    <span class="fa fa-arrow-circle-down"></span>
                    <br />
                    <span runat="server" id="lblMiabgin" class="control-label formLabel" style="color: #0066CC; font-size: 100%; font-weight: bold;"></span>
                </div>

            </div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="modal fade" id="modalShowDetails" tabindex="-1" role="dialog" aria-labelledby="modalAskSubmitUpdate-label" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title" id="modalAskSubmitUpdate-label">
                                    <span class=" glyphicon glyphicon-th-list"></span>
                                    <asp:Literal runat="server" Text="<%$ Resources:Dashboard,LessonGroupDetails%>" />
                                </h4>
                            </div>
                            <div class="modal-body" id="divtoprint">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="lblID" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,ID%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">

                                            <span id="tbxID" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_Class" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Class%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxClass" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_LessonTitle" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,LessonTitle%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxLessonTitle" runat="server" class="form-control control-label formLabel" />
                                        </div>
                                    </div>
                                </div>

                                <div class="ln_solid"></div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_Unit" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Unit%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxUnit" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_TFName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,TeacherFName%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxTeacherFName" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_TLName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,TeacherLName%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxTeacherLName" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_GradeTitle" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,GradeTitle%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxGradeTitle" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_Day" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Day%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxDay" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_Time" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Time%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxTime" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                                            <span id="ContentPlaceHolder1_lbl_Year" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Year%>" />
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                                            <span id="tbxYear" runat="server" class="form-control control-label formLabel"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="row">
                                    <div class="col-xs-12 text-center">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,back%>" />
                                        </button>
                                        <button type="button" id="btnPrint" class="btn btn-default" onclick=" my()">print</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="row">

            <div class="extra" style="height: 100px">
            </div>
        </div>
    </div>
    <script src="../JavaScript/JavaScript.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
