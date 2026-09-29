<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>College Letter Generator</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #eef2f7;
        }

        .header {
            background: #12355b;
            color: white;
            padding: 25px;
            text-align: center;
        }

        .header h1 {
            margin: 0;
            font-size: 28px;
        }

        .header p {
            margin: 8px 0 0;
            font-size: 14px;
        }

        .nav {
            background: white;
            text-align: center;
            padding: 15px;
            box-shadow: 0 2px 8px #ccc;
        }

        .nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #12355b;
            font-weight: bold;
        }

        .container {
            width: 850px;
            margin: 40px auto;
        }

        .welcome {
            text-align: center;
            margin-bottom: 30px;
        }

        .welcome h2 {
            color: #12355b;
        }

        .cards {
            display: flex;
            gap: 20px;
            justify-content: center;
        }

        .card {
            background: white;
            width: 220px;
            padding: 25px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 15px #ccc;
        }

        .card h3 {
            color: #12355b;
        }

        .btn {
            display: inline-block;
            background: #12355b;
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        .footer {
            text-align: center;
            margin-top: 60px;
            color: #777;
            font-size: 13px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>ST. JOSEPH'S COLLEGE</h1>
        <p>College Letter Generator System</p>
    </div>

    <div class="nav">
        <a href="Dashboard.aspx">Dashboard</a>
        <a href="GenerateLetter.aspx">Generate Letter</a>
        <a href="History.aspx">Letter History</a>
        <a href="Default.aspx">Logout</a>
    </div>

    <div class="container">

        <div class="welcome">
            <h2>Welcome to College Letter Generator</h2>
            <p>Create and print college letters quickly and easily.</p>
        </div>

        <div class="cards">

            <div class="card">
                <h3>Generate Letter</h3>
                <p>Create Permission, Bonafide and Leave Letters.</p>

                <a href="GenerateLetter.aspx" class="btn">
                    Create Letter
                </a>
            </div>

            <div class="card">
                <h3>Letter History</h3>
                <p>View previously generated letters.</p>

                <a href="History.aspx" class="btn">
                    View History
                </a>
            </div>

            <div class="card">
                <h3>Print / PDF</h3>
                <p>Print your letter or save it as PDF.</p>

                <a href="GenerateLetter.aspx" class="btn">
                    Generate
                </a>
            </div>

        </div>

        <div class="footer">
            © 2026 St. Joseph's College | College Letter Generator System
        </div>

    </div>

</form>

</body>
</html>