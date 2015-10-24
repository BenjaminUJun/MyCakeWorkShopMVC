<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="contactTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Contact - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title1">
        <h1>Contact:</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>
    <section class="contacts1">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>18662219952</span>
        </p>
        <p>
            <span class="label">Work:</span>
            <span>0571-63591923</span>
        </p>
    </section>

    <section class="contacts1">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support&nbsp&nbsp&nbsp&nbsp:</span>
            <span><a href="mailto:jyu103@student.monash.edu">jyu103@student.monash.edu</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:jyu103@student.monash.edu">jyu103@student.monash.edu</a></span>
        </p>
        <p>
            <span class="label">General&nbsp&nbsp&nbsp&nbsp:</span>
            <span><a href="mailto:jyu103@student.monash.edu">jyu103@student.monash.edu</a></span>
        </p>
    </section>

    <section class="contacts1">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Linquan Road<br />
            Suzhou, China     </p>
    </section>
</asp:Content>