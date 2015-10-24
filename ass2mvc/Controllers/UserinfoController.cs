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
        // GET: /Userinfo/

        public ActionResult Index()
        {
            var userinfoes = db.Userinfoes.Include(u => u.Cake);
            return View(userinfoes.OrderBy(p=>p.Name).ToList());
        }

        //
        // GET: /Userinfo/Details/5

        public ActionResult Details(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Single(u => u.ID == id); 
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            return View(userinfo);
        }

        //
        // GET: /Userinfo/Create

        public ActionResult Create()
        {
            ViewBag.CakeID = new SelectList(db.Cakes, "CakeID", "CakeName");
            return View();
        }

        //
        // POST: /Userinfo/Create

        [HttpPost]
        public ActionResult Create(Userinfo userinfo)
        {
            if (ModelState.IsValid)
            {
                db.Userinfoes.AddObject(userinfo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CakeID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // GET: /Userinfo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Single(u => u.ID == id); 
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            ViewBag.CakeID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // POST: /Userinfo/Edit/5

        [HttpPost]
        public ActionResult Edit(Userinfo userinfo)
        {
            if (ModelState.IsValid)
            {
                db.Userinfoes.Attach(userinfo);
                db.ObjectStateManager.ChangeObjectState(userinfo, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CakeID = new SelectList(db.Cakes, "CakeID", "CakeName", userinfo.CakeID);
            return View(userinfo);
        }

        //
        // GET: /Userinfo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Userinfo userinfo = db.Userinfoes.Single(u => u.ID == id); 
            if (userinfo == null)
            {
                return HttpNotFound();
            }
            return View(userinfo);
        }

        //
        // POST: /Userinfo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Userinfo userinfo = db.Userinfoes.Single(u => u.ID == id); 
            db.Userinfoes.DeleteObject(userinfo);
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