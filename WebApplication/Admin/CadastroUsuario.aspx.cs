using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;

namespace WebApplication {
    public partial class CadastroUsuario : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                if (!string.IsNullOrEmpty(Request.QueryString["key"])) {
                    UsuarioID.Text = Request.QueryString["key"].ToString();
                    
                    Excluir.Visible = true;
                    LeiaUsuario();
                }
            }
        }

        protected void LeiaUsuario() {
            string sql = "SELECT * FROM Usuarios WHERE UsuarioID=" + UsuarioID.Text;

            string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

            DAO db = new DAO();
            db.ConnectionString = conexao;
            db.DataProviderName = DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();
            tb = (DataTable)db.Query(sql);
            UTIL utl = new UTIL();

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha1.Text = utl.Decrypt(tb.Rows[0]["Senha"].ToString());
            Senha2.Text = utl.Decrypt(tb.Rows[0]["Senha"].ToString());

        }

        protected void Enviar_Click(object sender, EventArgs e)
            {
            if (Clear(Nome.Text) == "") {
                Alerta.Text = "Digite seu nome";
            } else if (Clear(Email.Text) == "") {
                Alerta.Text = "Digite seu e-mail";
            } else if (Clear(NomeAcesso.Text) == "") {
                Alerta.Text = "Digite o nome de acesso";
            } else if (Checkname(Clear(NomeAcesso.Text)) != true) {
                Alerta.Text = "Já temos um usuario com esse nome";
            } else if (Clear(Senha1.Text) == "") {
                Alerta.Text = "Digite a senha";
            } else if (Clear(Senha1.Text) != Clear(Senha2.Text)) {
                Alerta.Text = "As senhas são diferentes";
            } else {
                string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
                string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

                UTIL utl = new UTIL();

                string sql = "";

                if (UsuarioID.Text == "") {
                    sql = "INSERT INTO Usuarios (Nome,Email,NomeAcesso,Senha) VALUES('" + Clear(Nome.Text) + "','" + Clear(Email.Text) + "','" + Clear(NomeAcesso.Text) + "','" + utl.Encrypt(Clear(Senha1.Text)) + "')";

                } else {
                    sql = "UPDATE Usuarios SET Nome='" + Nome.Text + "',Email='" + Email.Text + "',NomeAcesso='" + NomeAcesso.Text + "',Senha='" + utl.Encrypt(Senha1.Text) + "' WHERE UsuarioID=" + UsuarioID.Text;

                }
                    DAO db = new DAO();
                    db.ConnectionString = conexao;
                    db.DataProviderName = DAO.ProviderName.OleDb;
                    db.Query(sql);
                    LimparControles();
                
            }

        }
        protected string Clear(string valor) {
            valor = valor.Replace("'", "''");
            return valor.Trim();
        }
        protected bool Checkname(string valor) {
            string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

            DAO db = new DAO();
            db.ConnectionString = conexao;

            db.DataProviderName = DAO.ProviderName.OleDb;

            string sql = "SELECT * FROM Usuarios WHERE NomeAcesso= '" + valor + "'";

            DataTable tb = new DataTable();
            tb = (DataTable)db.Query(sql);
            if (tb.Rows.Count == 1) {
                if (UsuarioID.Text == tb.Rows[0]["UsuarioID"].ToString()) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return true;
            }
        }

        protected void Excluir_Click(object sender, EventArgs e) {
            string bancoDados = Server.MapPath("~/App_Data/DBADS.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + bancoDados + ";Persist Security Info=False;";

            string sql = "DELETE * FROM Usuarios WHERE UsuarioID=" + UsuarioID.Text;

            DAO db = new DAO();
            db.ConnectionString = conexao;
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.Query(sql);
            LimparControles();

        }

        protected void LimparControles() {
            UsuarioID.Text = "";
            Alerta.Text = "";
            Nome.Text = "";
            Email.Text = "";
            NomeAcesso.Text = "";
            Senha1.Text = "";
            Senha2.Text = "";
            Excluir.Visible = false;
        }
    }
}


