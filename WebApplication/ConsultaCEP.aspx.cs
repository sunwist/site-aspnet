using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Net.Http;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Newtonsoft.Json;
using System.Web.Compilation;

namespace WebApplication {
    public partial class ConsultaCEP : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Buscar_Click(object sender, EventArgs e) {
            try {

                string url = "https://brasilapi.com.br/api/cep/v1/" + CEP.Text;

                HttpClient client = new HttpClient();

                string response = client.GetStringAsync(url).Result;

                JObject json = JObject.Parse(response);
                Logradouro.Text = json["street"].ToString();
                Bairro.Text = json["neighborhood"].ToString();
                Cidade.Text = json["city"].ToString();
                UF.Text = json["state"].ToString();


            } catch (Exception ex) {

                Alerta.Text = ex.Message;   

            }
        }
    }
}