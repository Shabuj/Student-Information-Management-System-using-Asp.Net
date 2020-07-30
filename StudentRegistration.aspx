<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="StudentInformationApp.StudentInfoUi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Student Information </h1>
    <div class="form-group">
        <label for="inputStudentName">Student Name </label>
        <input type="text" class="form-control" runat="server" id="inputStudentName" placeholder="Enter Student Name">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="inputStudentName" ErrorMessage="Field can't be empty "></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="inputRegNo">Registration No </label>
        <input type="text" runat="server" class="form-control" id="inputRegNo" placeholder="Enter Registration no">
    </div>
    <div class="form-group">
        <label for="inputEmailAddress">Email No </label>
        <input type="text" runat="server" class="form-control" id="inputEmailAddress" placeholder="Enter Email Address">
    </div>
    <div class="form-group">
        <label for="inputMobileNo">Mobile No </label>
        <input type="text" runat="server" class="form-control" id="inputMobileNo" placeholder="Enter Mobile No">
    </div>

    <div class="form-group">
        <label for="inputAge">Age </label>
        <input type="text" runat="server" class="form-control" id="inputAge" placeholder="Enter Age">
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="inputAge" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ErrorMessage="Invalid Input"></asp:CompareValidator>
    </div>


    <div class="form-group">
        <label for="inputAddress">Address </label>
        <input type="text" runat="server" class="form-control" id="inputAddress" placeholder="Enter Mobile No">
    </div>
    <asp:Button ID="saveButton" class="btn btn-primary" runat="server" Text="Save" OnClick="saveButton_Click" />
      <asp:Button ID="updateButton" class="btn btn-danger" runat="server" Text="Update" OnClick="updateButton_Click" />
      <asp:Button ID="deleteButton" class="btn btn-success" runat="server" Text="Delete" OnClick="deleteButton_Click" />
    <br />
    <asp:Label ID="messageLabel" runat="server" ></asp:Label>
   
   
</asp:Content>
