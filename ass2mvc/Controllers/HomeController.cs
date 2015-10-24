using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ass2mvc.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "of the website My Cake Workshop.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact information of the developers.";

            return View();
        }
    }
}
