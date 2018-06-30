<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="findDoc.aspx.cs" Inherits="Practice_Fusion.findDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Doc</title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        .style1{
            text-align:center;
            padding-top:15px;
        }
    </style>
</head>
<body>
    <h1 class="style1"> Welcome to FindDoc</h1>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h3 style="text-align:center"> Search for Doctors</h3>
          <div class="form-group">
            <asp:Label ID ="lspeciality" runat="server" Text="Speciality :"></asp:Label> 
            <asp:DropDownlist ID="tspeciality" 
                CssClass="form-control"
                style="width:300px;"
                placeholder=" Select speciality" 
                DataSourceId="SqlDataSource1" runat="server"
                DataTextField="specialization"
                DataValueField="specialization" ></asp:DropDownlist>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                  ConnectionString="<%$ ConnectionStrings:fusionConnectionString %>" 
                  SelectCommand="SELECT [specialization] FROM [specialization]"></asp:SqlDataSource>
            <br /><br />
            <asp:Label ID ="lzipcode" runat="server" Text="Zipcode :"></asp:Label> 
            <asp:DropDownlist ID="dzip"
                CssClass="form-control"
                style="width:300px;"
                placeholder=" Select zipcode"
                DataSourceID="SqlDataSource2"
                DataTextField="zipcode"
                DataValueField="zipcode" runat="server" ></asp:DropDownlist>

              <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                  ConnectionString="<%$ ConnectionStrings:fusionConnectionString %>"
                  SelectCommand="SELECT [zipcode] FROM [zipcode]"></asp:SqlDataSource>
            <br /><br />
            <asp:Button type="button" CssClass="btn btn-primary" id="findbtn" Text="Find!" OnClick="blogout_click" runat="server" />
         </div>
        </div>
    </form>
</body>
</html>
