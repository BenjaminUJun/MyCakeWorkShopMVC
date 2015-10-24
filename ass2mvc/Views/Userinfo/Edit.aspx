<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ass2mvc.Models.Userinfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 class="editinfo1">UserInfo Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>UserInfo</legend>

        <%: Html.HiddenFor(model => model.ID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CakeID, "Cake") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CakeID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CakeID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Mailbox) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Mailbox) %>
            <%: Html.ValidationMessageFor(model => model.Mailbox) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Profession) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Profession) %>
            <%: Html.ValidationMessageFor(model => model.Profession) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Gender) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Gender) %>
            <%: Html.ValidationMessageFor(model => model.Gender) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Age) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Age) %>
            <%: Html.ValidationMessageFor(model => model.Age) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Password) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
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
