<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageReply.aspx.cs" Inherits="DC.MessageReply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-style: solid; border-width: medium; width: 98%; margin: 20px; border-radius: 10px; height: 100%">
        <tr>
               <td style="font-size: 40px; font-weight: bold; color: snow; text-align: center;background: linear-gradient(to right, #e52d27, #b31217);border-radius:5px"">MANAGE COMPLAINT</td>
        </tr>
        <tr>
            <td style="background: linear-gradient(to right, #f2709c, #ff9472); border-radius: 5px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" Style="text-align: center" GridLines="None" Font-Size="X-Large">
                    <Columns>
                        <asp:BoundField DataField="ComplaintId" HeaderText="ComplaintId"
                            SortExpression="ComplaintId" />
                        <asp:BoundField DataField="ComplaintDate" HeaderText="ComplaintDate"
                            SortExpression="ComplaintDate" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="BookingId" HeaderText="BookingId"
                            SortExpression="BookingId" />
                        <asp:BoundField DataField="ComplaintDetail" HeaderText="ComplaintDetail"
                            SortExpression="ComplaintDetail" />

                        <asp:TemplateField>
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("ComplaintId")%>' OnClick="Button1_Click" Style="font-weight: 700; font-size: medium; width: 150px; background-color: red; color: ghostwhite"
     Text="Reply" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle BackColor="lightgrey" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataDictionaryConnectionString3 %>" SelectCommand="SELECT * FROM [ComplaintDetails]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>