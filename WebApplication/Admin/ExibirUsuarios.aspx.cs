using Datapost.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication {
    public partial class ExibirUsuarios : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e)
        {
            LerUsuarios();
        }

        protected void LerUsuarios() {
            string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

            string sql = "SELECT UsuarioID,Nome,Email,NomeAcesso FROM Usuarios ORDER BY Nome ASC";

            DAO db = new DAO();
            db.ConnectionString = conexao;
            db.DataProviderName = DAO.ProviderName.OleDb;
            Usuarios.DataSource = db.Query(sql);
            Usuarios.DataBind();
        }

        protected void Usuarios_SelectedIndexChanged(object sender, EventArgs e) {
            string chave = Usuarios.SelectedRow.Cells[1].Text;
            Response.Redirect("CadastroUsuario.aspx?key=" + chave);


        }
    }

}