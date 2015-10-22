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
        // GET: /Book/

        public ActionResult Index()
        {
            return View(db.Cakes.OrderBy(p=>p.CakeName).ToList());
        }

        //
        // GET: /Book/Details/5

        public ActionResult Details(int id = 0)
        {
            Cake book = db.Cakes.Find(id);
            if (book == null)
            {
                return HttpNotFound();
            }
            return View(book);
        }

        //
        // GET: /Book/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Book/Create

        [HttpPost]
        public ActionResult Create(Cake cake)
        {
            if (ModelState.IsValid)
                {
                    try{
                        db.Cakes.Add(cake);
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
        // GET: /Book/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Cake book = db.Cakes.Find(id);
            if (book == null)
            {
                return HttpNotFound();
            }
            return View(book);
        }

        //
        // POST: /Book/Edit/5

        [HttpPost]
        public ActionResult Edit(Cake cake)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cake).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cake);
        }

        //
        // GET: /Book/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Cake cake = db.Cakes.Find(id);
            if (cake == null)
            {
                return HttpNotFound();
            }
            return View(cake);
        }

        //
        // POST: /Book/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Cake book = db.Cakes.Find(id);
            db.Cakes.Remove(book);
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