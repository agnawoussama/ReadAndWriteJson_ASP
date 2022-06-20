using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReadAndWriteJson_ASP
{
    public partial class JsonRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Load Json and read it as a list of Objects to be displayed into Bulleted List
        protected void btnLoadJson_Click(object sender, EventArgs e)
        {
            using (StreamReader sr = new StreamReader(Server.MapPath("listePers.json")))
            {
                string jsonFile = sr.ReadToEnd();
                List<Person> listPers = JsonConvert.DeserializeObject<List<Person>>(jsonFile);
                BulletedListReadJson.DataSource = listPers;
                BulletedListReadJson.DataBind();
            }
        }
    }
}