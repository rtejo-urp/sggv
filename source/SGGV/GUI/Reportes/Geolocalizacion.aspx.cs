using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FacturacionBE;
using FacturacionBL;
using System.Data;
using Subgurim.Controles;

public partial class Reportes_Geolocalizacion : System.Web.UI.Page
{
    VendedorBL oVendedorBL = new VendedorBL();
    string cadenaSeguridad = System.Configuration.ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString;
    void CargarVendedor()
    {
        try
        {
            VendedorBE enti = new VendedorBE();
            enti.CodigoVendedor = null;
            enti.Usuario = User.Identity.Name;
            DataTable dt = oVendedorBL.SelVendedoresWeb(cadenaSeguridad, enti);

            this.ddlVendedor.DataSource = dt;
            this.ddlVendedor.DataMember = "IdVendedor";
            this.ddlVendedor.DataValueField = "IdVendedor";
            this.ddlVendedor.DataTextField = "Nombre";
            ddlVendedor.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        GMap1.Language = "es";
        //GMap1.setCenter(new GLatLng(-12.15, -77));
        

        if (!IsPostBack)
        {
            CargarVendedor();

            /*GMap1.GZoom = 25;
            GMap1.enableHookMouseWheelToZoom = true;

            //GMap1.setCenter(new GLatLng(37.339085, -121.8914807), 18);
            GMap1.mapType = GMapType.GTypes.Hybrid;
            GMap1.addMapType(GMapType.GTypes.Physical);
            GMap1.addControl(new GControl(GControl.preBuilt.MapTypeControl));
            GMap1.enableRotation = true;



            GMap1.addControl(new GControl(GControl.extraBuilt.TextualCoordinatesControl));
            GMap1.addControl(new GControl(GControl.extraBuilt.MarkCenter));


            GMap1.enableGKeyboardHandler = true;



            GMap1.Add(new GMapUI());

            GMapUIOptions options = new GMapUIOptions();
            options.maptypes_hybrid = false;
            options.keyboard = false;
            options.maptypes_physical = false;
            options.zoom_scrollwheel = false;


            // Puntos para definir la ruta del vendedor

            GLatLng latlng = new GLatLng(-12.15, -77);
            GMap1.setCenter(latlng, 15);

            List<GLatLng> puntos = new List<GLatLng>();
            puntos.Add(latlng + new GLatLng(0, 8));
            puntos.Add(latlng + new GLatLng(-0.5, 4.2));
            puntos.Add(latlng);
            puntos.Add(latlng + new GLatLng(3.5, -4));
            puntos.Add(latlng + new GLatLng(4.79, +2.6));

            GPolyline linea = new GPolyline(puntos, "FF0000", 2);
            GMap1.addPolyline(linea);


            // Ubicacion de los clientes


            GMap1.setCenter(latlng, 5, GMapType.GTypes.Hybrid);

            GMarker marker = new GMarker(latlng);
            GInfoWindowOptions windowOptions = new GInfoWindowOptions();
            GInfoWindow commonInfoWindow = new GInfoWindow(marker, "Cliente 1");
            GMap1.Add(commonInfoWindow);

            //GInfoWindow commonInfoWindow = new GInfoWindow(new GMarker(latlng + new GLatLng(2, 1)), "Cliente 2"); 
            GMap1.Add(new GInfoWindow(new GMarker(latlng + new GLatLng(2, 1)), "Cliente 2"));*/
        }
    }
    protected void btnConsultar_Click(object sender, EventArgs e)
    {
        try
        {


            ReporteBE oReporte =new ReporteBE();

            oReporte.Fecha = Convert.ToDateTime(this.txtFechaDesde.Text).Date;

            DataTable dt = oVendedorBL.SelVendedorRuta(cadenaSeguridad,oReporte);

            GMap1.GZoom = 15;
            GMap1.enableHookMouseWheelToZoom = true;

            //GMap1.setCenter(new GLatLng(37.339085, -121.8914807), 18);
           
            GMap1.mapType = GMapType.GTypes.Hybrid;
            GMap1.addMapType(GMapType.GTypes.Physical);
            GMap1.addControl(new GControl(GControl.preBuilt.MapTypeControl));
            GMap1.enableRotation = true;



            GMap1.addControl(new GControl(GControl.extraBuilt.TextualCoordinatesControl));
            GMap1.addControl(new GControl(GControl.extraBuilt.MarkCenter));


            GMap1.enableGKeyboardHandler = true;



            GMap1.Add(new GMapUI());

            GMapUIOptions options = new GMapUIOptions();
            options.maptypes_hybrid = false;
            options.keyboard = false;
            options.maptypes_physical = false;
            options.zoom_scrollwheel = false;


            // Puntos para definir la ruta del vendedor



            GLatLng latlng = new GLatLng(Convert.ToDouble(dt.Rows[2]["Latitud"].ToString()), Convert.ToDouble(dt.Rows[2]["Longitud"].ToString()));
            GMap1.setCenter(latlng, 15);

            List<GLatLng> puntos = new List<GLatLng>();
            foreach (DataRow R in dt.Rows)
            {
                puntos.Add(new GLatLng(Convert.ToDouble(R["Latitud"].ToString()), Convert.ToDouble(R["Longitud"].ToString())));
                
            }
            /*puntos.Add(latlng + new GLatLng(0, 8));
            puntos.Add(latlng + new GLatLng(-0.5, 4.2));
            puntos.Add(latlng);
            puntos.Add(latlng + new GLatLng(3.5, -4));
            puntos.Add(latlng + new GLatLng(4.79, +2.6));*/

            GPolyline linea = new GPolyline(puntos, "FF0000",2);
            GMap1.addPolyline(linea);


            // Ubicacion de los clientes


            

            /*GMarker marker = new GMarker(latlng);
            GInfoWindowOptions windowOptions = new GInfoWindowOptions();
            GInfoWindow commonInfoWindow = new GInfoWindow(marker, "Cliente 1");
            GMap1.Add(commonInfoWindow);*/

            
            //GMap1.Add(new GInfoWindow(new GMarker(latlng + new GLatLng(2, 1)), "Cliente 2"));
        }
        catch (Exception ex)
        {
            
        }
    }
}