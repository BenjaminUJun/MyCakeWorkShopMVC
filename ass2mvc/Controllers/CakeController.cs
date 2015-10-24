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
    public class CakeController : Controller
    {
        private caketradeEntities db = new caketradeEntities();

        //
        // GET: /Cake/

        public ActionResult Index()
        {
            return View(db.Cakes.OrderBy(p=>p.CakeName).ToList());
        }

        //
        // GET: /Cake/Details/5

        public ActionResult Details(int id = 0)
        {
            Cake cake = db.Cakes.Single(p => p.CakeID == id);
            if (cake == null)
            {
                return HttpNotFound();
            }
            return View(cake);
        }

        //
        // GET: /Cake/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Cake/Create

        [HttpPost]
        public ActionResult Create(Cake cake)
        {
            if (ModelState.IsValid)
                {
                    try{
                        db.Cakes.AddObject(cake);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                    }
                    catch (System.Data.Entity.Validation.DbEntityValidationException)
                    {
                        return RedirectToAction("Index");
                    }
                }               
            return View(cake);
        }

        //
        // GET: /Cake/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Cake cake = db.Cakes.Single(p => p.CakeID == id);
            if (cake == null)
            {
                return HttpNotFound();
            }
            return View(cake);
        }

        //
        // POST: /Cake/Edit/5

        [HttpPost]
        public ActionResult Edit(Cake cake)
        {
            if (ModelState.IsValid)
            {
                db.Cakes.Attach(cake);
                db.ObjectStateManager.ChangeObjectState(cake, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cake);
        }

        //
        // GET: /Cake/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Cake cake = db.Cakes.Single(p => p.CakeID == id);
            if (cake == null)
            {
                return HttpNotFound();
            }
            return View(cake);
        }

        //
        // POST: /Cake/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Cake cake = db.Cakes.Single(p => p.CakeID == id);
            db.Cakes.DeleteObject(cake);
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