using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zapateria_interfazweb
{
    public partial class RegistrarVenta : System.Web.UI.Page
    {
        serviciozapateriaw.zapateriawsSoapClient ws = new serviciozapateriaw.zapateriawsSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var clientes = ws.getAllClientes();
                cmbCliente.DataSource = clientes;
                cmbCliente.DataTextField = "NomCliente1";
                cmbCliente.DataValueField = "Id_cliente";
                cmbCliente.DataBind();
                cmbCliente.Items.Insert(0, "-----");
                var productos = ws.getAllZapato();
                cmbProducto.DataSource = productos;
                cmbProducto.DataTextField = "NomGaZapato1";
                cmbProducto.DataValueField = "Id_zapatos";
                cmbProducto.DataBind();
                cmbProducto.Items.Insert(0, "-----");
                var empleado = ws.getAllEmpleados();
                cmbEmpleado.DataSource = empleado;
                cmbEmpleado.DataTextField = "Nomempleado";
                cmbEmpleado.DataValueField = "Id_empleado";
                cmbEmpleado.DataBind();
                cmbEmpleado.Items.Insert(0, "-----");
            }
                
               
        }

        protected void btnfinalizar_Click(object sender, EventArgs e)
        {
            if (txtcantproducto.Text != "")
            {
                if (txttotalpagar.Text != "")
                {
                    if (cmbCliente.Text != "")
                    {
                        if (cmbEmpleado.Text != "")
                        {
                            if (cmbProducto.Text != "")
                            {

                                

                                Int32 codeventa = 1;
                                Int32 codcliente = Convert.ToInt32(cmbCliente.SelectedIndex  );
                                Int32 codproducto = Convert.ToInt32(cmbProducto.SelectedIndex );
                                Int32 codempleado = Convert.ToInt32(cmbEmpleado.SelectedIndex );
                                Int32 cantproducto = Int32.Parse(txtcantproducto.Text);
                                Decimal totalpagar = Decimal.Parse(txttotalpagar.Text);

                                int response = ws.agregarDetavent(codeventa, codproducto, codempleado, cantproducto, totalpagar);
                                if (response == 1)
                                {
                                    Response.Redirect(Request.RawUrl + "?response=Added");
                                }
                                else
                                {
                                    Response.Redirect(Request.RawUrl + "/?response=Error");
                                }

                            }
                        }
                    }

                }
                else
                {
                    Response.Redirect(Request.RawUrl + "/?response=Error");
                }
            }
        }

        protected void btnagregar_Click(object sender, EventArgs e)
        {
            if (txtcantproducto.Text != "")
            {
                if (txttotalpagar.Text != "")
                {
                    if (cmbCliente.Text != "")
                    {
                        if (cmbEmpleado.Text != "")
                        {
                            if (cmbProducto.Text != "")
                            {



                                Int32 codeventa = 1;
                                Int32 codcliente = Convert.ToInt32(cmbCliente.SelectedIndex);
                                Int32 codproducto = Convert.ToInt32(cmbProducto.SelectedIndex);
                                Int32 codempleado = Convert.ToInt32(cmbEmpleado.SelectedIndex);
                                Int32 cantproducto = Int32.Parse(txtcantproducto.Text);
                                Decimal totalpagar = Decimal.Parse(txttotalpagar.Text);

                                int response = ws.agregarDetavent(codeventa, codproducto, codempleado, cantproducto, totalpagar);
                                if (response == 1)
                                {
                                    Response.Redirect(Request.RawUrl + "?response=Added");
                                }
                                else
                                {
                                    Response.Redirect(Request.RawUrl + "/?response=Error");
                                }

                            }
                        }
                    }

                }
                else
                {
                    Response.Redirect(Request.RawUrl + "/?response=Error");
                }
            }
        
               
           
        }
    }
    
}