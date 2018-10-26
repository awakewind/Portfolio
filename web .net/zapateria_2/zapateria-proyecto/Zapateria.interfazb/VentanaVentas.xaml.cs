using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Zapateria.interfazb
{
    /// <summary>
    /// Lógica de interacción para VentanaVentas.xaml
    /// </summary>
    public partial class VentanaVentas : Window
    {
        ServicioZapateriaReferenciab.zapateriawsSoapClient ws = new ServicioZapateriaReferenciab.zapateriawsSoapClient();
        MainWindow window = new MainWindow();
        public VentanaVentas()
        {
            InitializeComponent();
        }

        private void btnagregar_Click(object sender, RoutedEventArgs e)
        {
            if ( txtcantproducto.Text  != "")
            {
                if (txttotalpagar .Text != "")
                {
                    if (cmbCliente .Text != "")
                    {
                        if (cmbEmpleado .Text != "")
                        {
                            if (cmbProducto .Text != "")
                            {
                                Int32 codeventa = 1;
                                Int32 codcliente = Convert.ToInt32(cmbCliente.SelectedValue);
                                Int32 codproducto = Convert.ToInt32(cmbProducto.SelectedValue);
                                Int32 codempleado = Convert.ToInt32(cmbEmpleado.SelectedValue);
                                Int32 cantproducto = Int32.Parse(txtcantproducto.Text);
                                Decimal totalpagar = Decimal.Parse(txttotalpagar.Text);


                                if (ws.agregarVenta(DateTime.Today, codcliente) == 1)
                                {

                                    if (ws.agregarDetavent(codeventa, codproducto, codempleado, cantproducto, totalpagar) == 1)
                                    {
                                        MessageBox.Show("Nueva venta agregada", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                                    }
                                }
                                else
                                {
                                    MessageBox.Show("No se pudo agregar la venta", "Información", MessageBoxButton.OK, MessageBoxImage.Error);
                                }

                            }
                        }
                    }

                }
                else
                {
                    MessageBox.Show ("Por favor ingrese un valor", "Información", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
                     
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            lblFecha.Content = DateTime.Today ;
            

            var clientes = ws.getAllClientes();
            cmbCliente.ItemsSource = clientes;
            cmbCliente.DisplayMemberPath = "NomCliente1";
            cmbCliente.SelectedValuePath = "Id_cliente";
            var productos = ws.getAllZapato();
            cmbProducto.ItemsSource = productos;
            cmbProducto.DisplayMemberPath = "NomGaZapato1";
            cmbProducto.SelectedValuePath = "Id_zapatos";
            var empleado = ws.getAllEmpleados();
            cmbEmpleado.ItemsSource = empleado;
            cmbEmpleado.DisplayMemberPath = "Nomempleado";
            cmbEmpleado.SelectedValuePath = "Id_empleado";



        }

        private void btnfinalizar_Click(object sender, RoutedEventArgs e)
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
                                Int32 codcliente = Convert.ToInt32(cmbCliente.SelectedValuePath);
                                Int32 codproducto = Convert.ToInt32(cmbProducto.SelectedValuePath);
                                Int32 codempleado = Convert.ToInt32(cmbEmpleado.SelectedValuePath);
                                Int32 cantproducto = Int32.Parse(txtcantproducto.Text);
                                Decimal totalpagar = Decimal.Parse(txttotalpagar.Text);


                                if (ws.agregarVenta(DateTime.Today, codcliente) == 1)
                                {

                                    if (ws.agregarDetavent(codeventa, codproducto, codempleado, cantproducto, totalpagar) == 1)
                                    {
                                        MessageBox.Show("Nueva venta agregada", "Información", MessageBoxButton.OK, MessageBoxImage.Information);

                                        window.Show();
                                        this.Close();
                                    }
                                }
                                else
                                {
                                    MessageBox.Show("No se pudo agregar la venta", "Información", MessageBoxButton.OK, MessageBoxImage.Error);
                                }
                            }
                        }
                    }

                }
                else
                {
                    MessageBox.Show("Por favor ingrese un valor", "Información", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

        }

    }
}







