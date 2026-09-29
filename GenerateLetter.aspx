<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateLetter.aspx.cs" Inherits="collegeLetterGenerator_new.GenerateLetter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>College Permission Letter Generator</title>

 <style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #eef2f7;
    }

    .header {
        background: #12355b;
        color: white;
        padding: 22px;
        text-align: center;
    }

    .header h1 {
        margin: 0;
        font-size: 25px;
    }

    .header p {
        margin: 6px 0 0;
        font-size: 14px;
    }

    .container {
        width: 650px;
        margin: 35px auto;
        background: white;
        padding: 35px;
        border-radius: 10px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.12);
    }

    .page-title {
        text-align: center;
        color: #12355b;
        margin-bottom: 25px;
        border-bottom: 2px solid #12355b;
        padding-bottom: 12px;
    }

    .form-group {
        margin-bottom: 18px;
    }

    .form-group label {
        display: block;
        margin-bottom: 7px;
        font-weight: bold;
        color: #333;
    }

    .input {
        width: 100%;
        padding: 11px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 15px;
    }

    .input:focus {
        border-color: #12355b;
        outline: none;
    }

    .btn {
        padding: 12px 28px;
        background: #12355b;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background: #0b2745;
    }

    .footer {
        text-align: center;
        color: #777;
        font-size: 13px;
        margin-top: 20px;
    }
</style>
</head>

<body>

<form id="form2" runat="server">

        <div class="header">
    <h1>ST. JOSEPH'S COLLEGE</h1>
    <p>College Permission Letter Generator</p>
</div>

<div class="container">

    <h2 class="page-title">Generate Letter</h2>

        <!-- Student Name -->
        <div class="form-group">
            <asp:Label ID="lblName" runat="server"
                Text="Student Name"></asp:Label>

            <asp:TextBox ID="txtName" runat="server"
                CssClass="input"></asp:TextBox>
        </div>

        <!-- Register Number -->
        <div class="form-group">
            <asp:Label ID="lblRegisterNo" runat="server"
                Text="Register Number"></asp:Label>

            <asp:TextBox ID="txtRegisterNo" runat="server"
                CssClass="input"></asp:TextBox>
        </div>

        <!-- Department -->
        <div class="form-group">
            <asp:Label ID="lblDepartment" runat="server"
                Text="Department"></asp:Label>

            <asp:TextBox ID="txtDepartment" runat="server"
                CssClass="input"></asp:TextBox>
        </div>

        <!-- Year -->
        <div class="form-group">
            <asp:Label ID="lblYear" runat="server"
                Text="Year"></asp:Label>

            <asp:DropDownList ID="ddlYear" runat="server"
                CssClass="input">

                <asp:ListItem>1st Year</asp:ListItem>
                <asp:ListItem>2nd Year</asp:ListItem>
                <asp:ListItem>3rd Year</asp:ListItem>

            </asp:DropDownList>
        </div>

        <!-- Letter Type -->
        <div class="form-group">
            <asp:Label ID="lblLetterType" runat="server"
                Text="Letter Type"></asp:Label>

            <asp:DropDownList ID="ddlLetterType" runat="server"
                CssClass="input">

                <asp:ListItem>Permission Letter</asp:ListItem>
                <asp:ListItem>Bonafide Certificate</asp:ListItem>
                <asp:ListItem>Leave Letter</asp:ListItem>

            </asp:DropDownList>
        </div>

        <!-- To -->
        <div class="form-group">
            <asp:Label ID="lblTo" runat="server"
                Text="To"></asp:Label>

            <asp:DropDownList ID="ddlTo" runat="server"
                CssClass="input">

                <asp:ListItem>Principal</asp:ListItem>
                <asp:ListItem>Mentor</asp:ListItem>
                <asp:ListItem>Coordinator</asp:ListItem>
                <asp:ListItem>Deputy Principal</asp:ListItem>
                <asp:ListItem>Vice Principal</asp:ListItem>

            </asp:DropDownList>
        </div>

        <!-- Reason -->
        <div class="form-group">
            <asp:Label ID="lblReason" runat="server"
                Text="Reason"></asp:Label>

            <asp:TextBox ID="txtReason" runat="server"
                CssClass="input"
                TextMode="MultiLine"
                Rows="4"></asp:TextBox>
        </div>

        <!-- Generate Button -->
        <div style="text-align:center;">

            <asp:Button ID="btnGenerate" runat="server"
                Text="Generate Letter"
                CssClass="btn"
                OnClick="btnGenerate_Click" />

        </div>

    </div>

</form>

</body>
</html>
