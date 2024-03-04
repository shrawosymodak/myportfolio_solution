<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewpage.aspx.cs" Inherits="myportfolio.viewpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333; /* Text color */
        }

        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .table-container {
            overflow-x: auto;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .modify-button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
            transition: background-color 0.3s;
        }

        .modify-button:hover {
            background-color: #45a049;
        }

        .update-button,
        .delete-button {
            background-color: #007bff;
            color: #fff;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 5px;
            transition: background-color 0.3s;
        }

        .update-button:hover,
        .delete-button:hover {
            background-color: #0056b3;
        }

        .update-button:focus,
        .delete-button:focus {
            outline: none;
        }

        /* Media queries for responsiveness */
        @media screen and (max-width: 768px) {
            .modify-button {
                margin-top: 10px;
                margin-right: 0;
            }
        }
    </style>
</head>
<body>
    <h1 align="center">Project Section</h1>
    <form id="form1" runat="server">
        <div class="container">
            <div class="table-container">
                <asp:Table ID="dynamicTable" runat="server">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell CssClass="cell-styled">Serial No</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="cell-styled">Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="cell-styled">Description</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="cell-styled">Operation</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </div>
            <div class="button-container">
                <asp:Button ID="Add_Button1" runat="server" OnClick="Add_Button" Text="Add More" CssClass="modify-button" />
                <asp:Button ID="Logout_Button" runat="server" Text="Logout" OnClick="Logout_Click" CssClass="modify-button" />
            </div>
        </div>
    </form>
</body>
</html>
