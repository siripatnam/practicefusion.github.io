<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doclist.aspx.cs" Inherits="Practice_Fusion.doclist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor List</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        .style2{
            text-align:center;
            padding-top:15px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <h2 class="style2">List of Doctors</h2>
            <br />
       <asp:GridView id="grdDoctors"  DataSourceID="srcDoctors" 
                 AutoGenerateColumns="false" CssClass="table table-striped"
                runat="server">
       <Columns>
           <asp:BoundField DataField="doc_id" HeaderText="Doctor ID" />
        <asp:BoundField DataField="doc_name"  HeaderText="Doctor Name" />
         <asp:BoundField DataField="specialization" HeaderText="Speciality" />
         <asp:BoundField DataField="zipcode" HeaderText="Area Code" />
         <asp:BoundField DataField="review" HeaderText="Review" />
       </Columns>
    </asp:GridView>
        <br />
            <asp:Label ID="lblMesssage" runat="server" Visible="false" />
            <br />
            <br />
        <div style="text-align:center">
        <asp:Button type="Button"
            CssClass="btn btn-primary" ID="btngo" Text="Go Back!" OnClick="bgo_Click" runat="server" />
        <hr />
        </div>
        <asp:SqlDataSource ID="srcDoctors"            
        ConnectionString="<%$ConnectionStrings:fusionConnectionString %>" 
     runat="server">
            </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
