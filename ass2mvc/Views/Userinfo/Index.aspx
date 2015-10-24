<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ass2mvc.Models.Userinfo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="headers12">UserInfo Index</h2>

<p>
    <%: Html.ActionLink("Add a new user", "Create") %>
</p>
<table id="usertable">
    <thead>    
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Cake.CakeName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Mailbox) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Profession) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Gender) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Age) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Password) %>
        </th>
        <th></th>
    </tr>
        </thead>
    <tbody>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Cake.CakeName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Mailbox) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Profession) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Gender) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Age) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Password) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.ID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.ID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.ID }) %>
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
