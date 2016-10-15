using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Movimientos_wfrmMantVendedor : System.Web.UI.Page
{
    String cadenaSeguridad =System.Configuration.ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString;
    DataTable dt;  


    protected void Page_Load(object sender, EventArgs e)
    {

    }
}