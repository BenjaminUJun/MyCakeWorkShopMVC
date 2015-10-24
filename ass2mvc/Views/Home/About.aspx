<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title1">
        <h1>Documentation: The Introduction to Our Cake Workshop Webstie </h1>
    </hgroup>

    <article class="article1">
        <p>
            Name: Yu Jun & Pan Jingming &nbsp;&nbsp;Student ID: 26346702 &nbsp;&nbsp;Assignment number: fit5192
        </p>

        <p>
            Unit's name: Internet applications and web services&nbsp;&nbsp;Tutor’s name: Grace
        </p>

        <p>
            Unit provider: Monash University, The Faculty of Information Technology
        </p>

        <p>
            Date of submission: 8/31/2015&nbsp;&nbsp; Email: jyu103@student.monash.edu 
        </p>

        <p>
            Assignment Link: <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Content/FIT5192-Assignment2-2015.pdf" runat="server">Assignment</asp:HyperLink>&nbsp;&nbsp;Assignment number: ASS2 task 2 
        </p>

        <p>
            Page 'Cake' and page 'Users' use full CRUD functionality for the database tables, and sorting to display entries based on alphabetical order. 
        </p>
        <p>
        Using jQuery to accomplish the row highlighting and alternating row colouring.  
        </p>
          <p>
            Page 'Cake' and page 'Users' also use JQuery to search infomation. Only the entries that contains the information that user entered will be displayed.  
        </p>
        <p>
            The jQuery libraries are<asp:HyperLink ID="HyperLink1" NavigateUrl="~/Scripts/jquery.dataTables.js" runat="server"> 'jquery.dataTables.js',</asp:HyperLink> and<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Scripts/JavaScript1.js" runat="server"> 'JavaScript1.js'</asp:HyperLink>.
        </p>
    </article>
             <table>
                 <tr>
                     <th class="images1">Image Name & Image Source</th>
                 </tr>
                 <tr>
                     <td class="contents">1.jpg & 2.jpg</td>
                     <td class="links1">http://book.douban.com/</td>
                 </tr>
                 <tr>
                     <td class="contents">5.jpg & 6.jpg</td>
                     <td class="links1">http://book.douban.com/</td>
                 </tr>
                 <tr>
                     <td class="contents">3.jpg & 4.jpg</td>
                     <td class="links1">http://book.douban.com/</td>
                 </tr>
             </table>
   
</asp:Content>