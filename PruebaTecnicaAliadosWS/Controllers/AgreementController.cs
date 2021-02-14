using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PruebaTecnicaAliadosWS.Context;
using PruebaTecnicaAliadosWS.Entity;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PruebaTecnicaAliadosWS.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AgreementController : ControllerBase
    {
        private readonly AppDBContext context;
        public AgreementController(AppDBContext context)
        {
            this.context = context;
        }
        [HttpGet]
        public IEnumerable<Agreement> Get()
        {
            return context.Agreement.ToList();
        }
    }
}
