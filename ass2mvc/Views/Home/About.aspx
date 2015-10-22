<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Documentation </h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <article>
        <p>
            Name: Hua Yuncheng &nbsp;&nbsp;Student ID: 25467271 &nbsp;&nbsp;Assignment number: fit5192
        </p>

        <p>
            Unit's name: Internet applications and web services&nbsp;&nbsp;Tutor’s name: Grace
        </p>

        <p>
            Unit provider: Monash University, The Faculty of Information Technology
        </p>

        <p>
            Date of submission: 8/27/2014&nbsp;&nbsp; Email: yhua219@student.monash.edu 
        </p>

        <p>
            Assignment Link: <asp:HyperLink ID="HyperLink3" NavigateUrl="http://moodle.vle.monash.edu/pluginfile.php/1970630/mod_resource/content/4/Assignments/FIT5192-Assignment1-2014.pdf" runat="server">Assignment</asp:HyperLink>&nbsp;&nbsp;Assignment number: ASS2 task 2 
        </p>

        <p>
            Page 'Book' and page 'Users' use full CRUD functionality for the database tables, and sorting to display entries based on alphabetical order. 
        </p>
        <p>
        Using jQuery to accomplish the row highlighting and alternating row colouring.  
        </p>
          <p>
            Page 'Book' and page 'Users' also use JQuery to search infomation. Only the entries that contains the information that user entered will be displayed.  
        </p>
        <p>
            The jQuery libraries are<asp:HyperLink ID="HyperLink1" NavigateUrl="~/Scripts/jquery.dataTables.js" runat="server"> 'jquery.dataTables.js',</asp:HyperLink> and<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Scripts/JavaScript1.js" runat="server"> 'JavaScript1.js'</asp:HyperLink>.
        </p>
    </article>
             <table>
                 <tr>
                     <th>Image name</th>
                     <th>Image source</th>
                 </tr>
                 <tr>
                     <td>1.jpg & 2.jpg</td>
                     <td>http://www.enderwiggin.net/wallpapers/</td>
                 </tr>
                 <tr>
                     <td>5.jpg & 6.jpg</td>
                     <td>http://www.enderwiggin.net/wallpapers/</td>
                 </tr>
                 <tr>
                     <td>3.jpg & 4.jpg</td>
                     <td>http://book.douban.com/</td>
                 </tr>
             </table>
   
</asp:Content>