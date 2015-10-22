using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ass2mvc.Models;

namespace ass2mvc.Controllers
{
    public class UserinfoController : Controller
    {
        private caketradeEntities db = new caketradeEntities();

        //
        // GET: /UserInfo/

        public ActionResult Index()
        {
            var userinfoes = db.Userinfoes.Include(u => u.Cake);
            return View(userinfoes.OrderBy(p=>p.Name).ToList());
        }

        //
        // GET: /UserInfo/Details/5

        public ActionResult Details(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Find(id);
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            return View(userinfo);
        }

        //
        // GET: /UserInfo/Create

        public ActionResult Create()
        {
            ViewBag.BookID = new SelectList(db.Cakes, "CakeID", "CakeName");
            return View();
        }

        //
        // POST: /UserInfo/Create

        [HttpPost]
        public ActionResult Create(Userinfo userinfo)
        {
            if (ModelState.IsValid)
            {
                db.Userinfoes.Add(userinfo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BookID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // GET: /UserInfo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Find(id);
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            ViewBag.BookID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // POST: /UserInfo/Edit/5

        [HttpPost]
        public ActionResult Edit(Userinfo userinfo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(userinfo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BookID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // GET: /UserInfo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Find(id);
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            return View(userinfo);
        }

        //
        // POST: /UserInfo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Userinfo userinfo = db.Userinfoes.Find(id);
            db.Userinfoes.Remove(userinfo);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}