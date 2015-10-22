<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="contactTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Contact - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Contact.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>
    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>18616020883</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>15005189259</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support&nbsp&nbsp&nbsp&nbsp:</span>
            <span><a href="mailto:yhua219@student.monash.edu">yhua219@student.monash.edu</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:yhua219@student.monash.edu">yhua219@student.monash.edu</a></span>
        </p>
        <p>
            <span class="label">General&nbsp&nbsp&nbsp&nbsp:</span>
            <span><a href="mailto:yhua219@student.monash.edu">yhua219@student.monash.edu</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Zonglv Road<br />
            Shanghai, China     </p>
    </section>
</asp:Content>