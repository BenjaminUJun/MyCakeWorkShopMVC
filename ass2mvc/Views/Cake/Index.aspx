<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ass2mvc.Models.Cake>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cake
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="headers12">Cake Index:</h2>

<p>
    <%: Html.ActionLink("Add a new Cake", "Create") %>
</p>
<table id="booktable">
    <thead>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.CakeName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Time) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Price) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Description) %>
        </th>
        <th></th>
    </tr>
    </thead>
    <tbody>
<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CakeName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Time) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Price) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CakeID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CakeID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CakeID }) %>
        </td>
    </tr>
<% } %>
        </tbody>
</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
