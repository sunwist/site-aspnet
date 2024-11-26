using Datapost.DB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Entrar_Click(object sender, EventArgs e) {
            if (VerificarUsuario()) {
                Session["autenticado"] = "";

                System.Web.Security.FormsAuthentication.Initialize();

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "admin",
               DateTime.Now, DateTime.Now.AddMinutes(20), false,
               FormsAuthentication.FormsCookiePath);

                Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName,
               FormsAuthentication.Encrypt(ticket)));


                Response.Redirect(FormsAuthentication.GetRedirectUrl("Admin", false));
            } else {
                Alerta.Text = "Dados de acesso invalidos";
            }
        }
    
        protected bool VerificarUsuario() {
            UTIL utl = new UTIL();

            string sql = "SELECT * FROM Usuarios WHERE NomeAcesso='" + NomeAcesso.Text + "' AND Senha='" + 
                utl.Encrypt(Senha.Text) + "'";

            string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

            DAO db = new DAO();
            db.ConnectionString = conexao;
            db.DataProviderName = DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();
            tb = (DataTable)db.Query(sql);

            if (tb.Rows.Count == 1) {
                return true;
            } else {
                return false;
            }
        }
    }
}