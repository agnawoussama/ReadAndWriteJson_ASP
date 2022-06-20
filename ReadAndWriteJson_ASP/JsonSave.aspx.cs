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
    public partial class JSON : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillList();
                Response.Write(Person.listPers.Count.ToString());
            }         
        }

        //Add a new person
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Person.listPers.Add(new Person(txtbxCin.Text, txtbxName.Text, int.Parse(txtbxAge.Text)));
            fillList();
            txtbxCin.Text = txtbxName.Text = txtbxAge.Text = "";
        }
        
        //Fill the bulleted list
        void fillList()
        {           
            BulletedListObjects.DataSource = Person.listPers;
            BulletedListObjects.DataBind();
        }

        //Serialize into Json
        protected void btnSaveJson_Click(object sender, EventArgs e)
        {
            using (StreamWriter file = File.CreateText(Server.MapPath("listePers.json")))
            {
                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(file, Person.listPers);
                Response.Write("JSON SAVED");
            }
        }
    }
}