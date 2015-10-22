<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>
<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server">

                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:Timer ID="Timer1" Interval="100" runat="server" />
                    <table>
                        <tr>
                            <td style="width: 20%"></td>
                            <td style="align-content: center">
                                <asp:AdRotator Height="510px" Width="680px" ID="AdRotator2" AdvertisementFile="~/App_Data/Ads.xml" runat="server" />
                            </td>
                            <td style="width: 20%"></td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            </form>      
</asp:Content>
