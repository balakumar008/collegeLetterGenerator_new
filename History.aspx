<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="History.aspx.cs"
    Inherits="collegeLetterGenerator_new.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Letter History</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f5f5f5;
            margin: 0;
        }

        .header {
            background-color: #172554;
            color: white;
            text-align: center;
            padding: 30px;
        }

        .container {
            width: 90%;
            margin: 40px auto;
            background: white;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #1e3a8a;
        }

        .history {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        .history th {
            background-color: #1e3a8a;
            color: white;
            padding: 12px;
        }

        .history td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .btn {
            margin-top: 25px;
            padding: 10px 20px;
            background-color: #1e3a8a;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>ST. JOSEPH'S COLLEGE</h1>
        <p>College Letter Generator System</p>
    </div>

    <div class="container">

        <h2>Letter History</h2>

        <asp:GridView ID="gvHistory"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="history">

            <Columns>

                <asp:BoundField
                    DataField="StudentName"
                    HeaderText="Student Name" />

                <asp:BoundField
                    DataField="RegisterNo"
                    HeaderText="Register Number" />

                <asp:BoundField
                    DataField="Department"
                    HeaderText="Department" />

                <asp:BoundField
                    DataField="LetterType"
                    HeaderText="Letter Type" />

                <asp:BoundField
                    DataField="Date"
                    HeaderText="Date" />

            </Columns>

        </asp:GridView>

        <asp:Button ID="btnBack"
            runat="server"
            Text="Back to Dashboard"
            CssClass="btn"
            OnClick="btnBack_Click" />

    </div>

</form>

</body>
</html>