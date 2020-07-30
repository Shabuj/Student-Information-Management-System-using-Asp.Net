<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="StudentInformationApp.StudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <br>

     <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:TemplateField HeaderText="Student Name "> 
                <ItemTemplate>
                    <%#Eval("StudentName")  %>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Registration No "> 
                <ItemTemplate>
                    <%#Eval("StudentRegNo") %>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Email "> 
                <ItemTemplate>
                    <%#Eval("StudentEmail") %>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Mobile No "> 
                <ItemTemplate>
                    <%#Eval("StudentMobileNo") %>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Age "> 
                <ItemTemplate>
                    <%#Eval("StudentAge") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address "> 
                <ItemTemplate>
                    <%#Eval("StudentAddress") %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />

    </asp:GridView>
</asp:Content>
