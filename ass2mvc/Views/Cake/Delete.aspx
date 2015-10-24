<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<ass2mvc.Models.Cake>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="deleteinfo12">Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Book</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CakeName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CakeName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Time) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Time) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Price) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Price) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Description) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
