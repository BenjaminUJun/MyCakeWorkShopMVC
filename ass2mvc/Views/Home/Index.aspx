<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My Cake Workshop
</asp:Content>
<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
            <div class="banner">
            <div class="banner-grid">
                <ul>
                    <li>
                        <h2>Welcome</h2>
                    </li>
                    <li>
                        <p>Our Website tends to offer you great diversity of cake choices and delicious cake tastes. You would learn a lot of information from this website.</p>
                    </li>
                    <li><a href="/Home/About">ReadMore</a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"> </div>
      	<!--banner-end-->
      	<div class="clear"> </div>
      	<!--content-grids-->
    
   
    <form id="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Timer ID="Timer1" Interval="100" runat="server" />
                <table class="ttable">
                    <tr>
                        <td style="width: 20%"></td>
                        <td style="align-content: center">
                            <asp:AdRotator Height="230px" Width="270px" ID="AdRotator2" AdvertisementFile="~/App_Data/Ads.xml" runat="server" />
                        </td>
                        <td style="width: 20%"></td>
                    </tr>
                </table>
                <div class="introduction">
                    <header>Advertisement Information:</header>
                    <p>This Cake can be Very delicious, You can go to 21cake.com for more information.</p>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

</asp:Content>
