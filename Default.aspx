<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div>
       <div style="padding:18px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: x-large; font-weight: bold; font-style: italic; font-variant: normal; text-transform: uppercase; color: #008080;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; student management system<br />
           <br />
           <table class="nav-justified">
               <tr>
                   <td>
                       <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="ID"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="210px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="210px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="height: 42px">
                       <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="RegNO"></asp:Label>
                   </td>
                   <td style="height: 42px">
                       <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="210px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Department"></asp:Label>
                   </td>
                   <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="210px">
                           <asp:ListItem>CSE</asp:ListItem>
                           <asp:ListItem>Mech</asp:ListItem>
                           <asp:ListItem>Civil</asp:ListItem>
                           <asp:ListItem>Botany</asp:ListItem>
                           <asp:ListItem>ECE</asp:ListItem>
                           <asp:ListItem>MBA</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
               <tr>
                   <td style="height: 42px">
                       <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Batch"></asp:Label>
                   </td>
                   <td style="height: 42px">
                       <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="210px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                   </td>
                   <td>
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="1" CellSpacing="2" Font-Size="Small" RepeatDirection="Horizontal">
                           <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:RadioButtonList>
                   </td>
               </tr>
               <tr>
                   <td style="height: 42px"></td>
                   <td style="height: 42px">
                       <asp:Button ID="ButtonAdd" runat="server" BackColor="#6666FF" Font-Size="Medium" ForeColor="Black" OnClick="ButtonAdd_Click" Text="ADD" Width="80px" />
                       <asp:Button ID="ButtonEdit" runat="server" BackColor="#6666FF" Font-Size="Medium" ForeColor="Black" OnClick="ButtonEdit_Click" Text="EDIT" Width="80px" />
                       <asp:Button ID="ButtonDelete" runat="server" BackColor="#6666FF" Font-Size="Medium" ForeColor="Black" OnClick="ButtonDelete_Click" OnClientClick="return confirm('Are you sure you want to delete..!');" Text="DELETE" Width="80px" />
                   </td>
               </tr>
               <tr>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td colspan="2">
                       <asp:GridView ID="GridView1" runat="server" BackColor="#66FFCC" Font-Size="Medium" ForeColor="Black" Width="863px">
                           <HeaderStyle BackColor="#6699FF" BorderColor="#990033" ForeColor="Black" />
                       </asp:GridView>
                   </td>
               </tr>
           </table>
       </div>
    </div>
</asp:Content>

