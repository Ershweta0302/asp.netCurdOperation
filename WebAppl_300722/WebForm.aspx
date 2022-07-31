<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebAppl_300722.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <th>Name </th>               
                    <th><asp:TextBox ID="TextName" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Age</th>
                    <th><asp:TextBox ID="TextAge" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Gender</th>
                    <th><asp:TextBox ID="TextGen" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Email</th>
                    <th><asp:TextBox ID="TextEmail" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Phone No</th>
                    <th><asp:TextBox ID="TextPhone" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Address</th>
                    <th><asp:TextBox ID="TextAdderss" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th></th>
                    <th><asp:Button ID="btnsubmit" runat="server" Width="150px" BackColor="YellowGreen" ForeColor="Black" Text="Submit" Onclick="btnsubmit_Click" /></th>
                </tr>
                <tr>
                    <th></th>
                    <th><asp:GridView ID="grd" runat="server" OnRowCommand="grd_RowCommand" AutoGenerateColumns="false">
                         <Columns>
                            <asp:TemplateField HeaderText="Employe Id">
                                <ItemTemplate>
                                    <%#Eval("Id") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                         <asp:TemplateField HeaderText="Employe Name">
                                <ItemTemplate>
                                    <%#Eval("Name") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                         <asp:TemplateField HeaderText="Employe Age">
                                <ItemTemplate>
                                    <%#Eval("Age") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                          <asp:TemplateField HeaderText="Employe Gender">
                                <ItemTemplate>
                                    <%#Eval("Gender") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employe Email">
                                <ItemTemplate>
                                    <%#Eval("Email") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employe PhoneNo">
                                <ItemTemplate>
                                    <%#Eval("Phone") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employe Address">
                                <ItemTemplate>
                                    <%#Eval("Address") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnDelete" runat="server" Text="Delete"  CommandName="ABC" CommandArgument='<%#Eval("Id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField >
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnUpadate" runat="server" Text="Update" CommandName="XYZ" CommandArgument='<%#Eval("Id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        </asp:GridView></th>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
