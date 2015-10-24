<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ass2mvc.Models.Userinfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="detailinfo12">User Details</h2>

<fieldset>
    <legend>UserInfo</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Cake.CakeName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Cake.CakeName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Mailbox) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Mailbox) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Profession) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Profession) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Gender) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Gender) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Age) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Age) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Password) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
