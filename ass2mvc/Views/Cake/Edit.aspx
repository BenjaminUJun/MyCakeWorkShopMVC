<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<ass2mvc.Models.Cake>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="editinfo1">CakeInfo Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Book</legend>

        <%: Html.HiddenFor(model => model.CakeID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CakeName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CakeName) %>
            <%: Html.ValidationMessageFor(model => model.CakeName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Time) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Time) %>
            <%: Html.ValidationMessageFor(model => model.Time) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Price) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Price) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
