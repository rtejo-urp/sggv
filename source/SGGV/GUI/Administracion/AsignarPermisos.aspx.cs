using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlUsuario.DataSource = Membership.GetAllUsers();
            ddlUsuario.DataBind();
            ObtenerRoles(); 
        }
    }

    private void ObtenerRoles()
    {
        lstAsignado.Items.Clear();
        lstNoAsignado.Items.Clear();
        
        lstAsignado.DataSource = Roles.GetRolesForUser(ddlUsuario.Text);
        lstAsignado.DataBind();

        lstNoAsignado.DataSource = Roles.GetAllRoles();
        lstNoAsignado.DataBind();
        int num = lstAsignado.Items.Count;
        for (int j = 0; j < num; j++)
        {
            if (lstNoAsignado.Items.Contains(lstAsignado.Items[j]))
            {
                int numRoles = lstNoAsignado.Items.Count;
                for (int i = 0; i < numRoles; i++)
                {
                    if (lstNoAsignado.Items[i].Equals(lstAsignado.Items[j]))
                    {
                        lstNoAsignado.Items.RemoveAt(i);
                        i--;
                        numRoles--; 
                    }
                }
            }
        }

    }
    protected void ddlUsuario_SelectedIndexChanged(object sender, EventArgs e)
    {
        ObtenerRoles(); 
    }
    protected void btnRefrescar_Click(object sender, EventArgs e)
    {
        ObtenerRoles(); 
    }
    protected void btnAgregarUno_Click(object sender, EventArgs e)
    {
        if (lstNoAsignado.SelectedItem != null)
        {
            Roles.AddUserToRole(ddlUsuario.Text, lstNoAsignado.SelectedItem.ToString());
            lstAsignado.Items.Add(lstNoAsignado.SelectedItem);
            lstNoAsignado.Items.Remove(lstNoAsignado.SelectedItem);
            lstAsignado.ClearSelection();
            lstNoAsignado.ClearSelection();  
        }
    }
    protected void btnEliminarUno_Click(object sender, EventArgs e)
    {
        if (lstAsignado.SelectedItem != null)
        {
            Roles.RemoveUserFromRole(ddlUsuario.Text, lstAsignado.SelectedItem.ToString());
            lstNoAsignado.Items.Add(lstAsignado.SelectedItem);
            lstAsignado.Items.Remove(lstAsignado.SelectedItem);
            lstAsignado.ClearSelection();
            lstNoAsignado.ClearSelection();  
        }
    }

    protected void btnAgregarTodos_Click(object sender, EventArgs e)
    {
        int numRoles = lstNoAsignado.Items.Count;
        for (int i = 0; i < numRoles; i++)
        {
            Roles.AddUserToRole(ddlUsuario.Text, lstNoAsignado.Items[i].ToString());
            lstAsignado.Items.Add(lstNoAsignado.Items[i]);
            lstNoAsignado.Items.Remove(lstNoAsignado.Items[i]);
            i--;
            numRoles--;
        }
        lstAsignado.ClearSelection();
        lstNoAsignado.ClearSelection();        
    }

    protected void btnEliminarTodos_Click(object sender, EventArgs e)
    {
        int numRoles = lstAsignado.Items.Count;

        for (int i = 0; i < numRoles; i++)
        {
            Roles.RemoveUserFromRole(ddlUsuario.Text, lstAsignado.Items[i].ToString());
            lstNoAsignado.Items.Add(lstAsignado.Items[i]);
            lstAsignado.Items.Remove(lstAsignado.Items[i]);
            i--;
            numRoles--;
        }
        lstAsignado.ClearSelection();
        lstNoAsignado.ClearSelection();
    }
}