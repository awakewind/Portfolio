   M S B A M L   `   `   `  ���� N  JZapateria.interfazb, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Zapateria.interfazbZapateria.interfazb  0    *Zapateria.interfazb.VentanaAdministración   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     3local!clr-namespace:Zapateria.interfazb     -     � WindowStartupLocation$  CenterScreen=� � 
ResizeMode$ CanMinimize=� � Title$ VentanaAdministración��$	��500��$	��800��.��� .+��� -    ��Name$ 
tabControl��$
��Left=�$	��461��$	��Top=�$	��794��.@��� $��Control de empleados��.��� ���	#FFE5E5E5$��10,-3,-10,3q� � ColumnDefinitions �� $	��39* ��� $
��253* �.+��� -   $ tabControl12��$	��433��$	��Top=�$
��Left=�$	��788��$��2��.@��� $��	Empleados��$��	0,0,-4,-2q�.��� ���	#FFE5E5E5$��0,-2,0,2q�.+��� -    ��Name$ label��$��Nombres:��$
��Left=�$��	10,10,0,0q�$	��Top=��� -   $ label1��$��
Apellidos:��$
��Left=�$��	10,41,0,0q�$	��Top=��� -   $ label2��$��	Telefono:��$
��Left=�$��	10,72,0,0q�$	��Top=��� -   $ label3��$��Dirección:��$
��Left=�$��
10,103,0,0q�$	��Top=��� -   $ label4��$��Cargo��$
��Left=�$��
10,129,0,0q�$	��Top=� J� RenderTransformOrigin$ -0.067,0.161&��� -	   $ label5��$��Fecha de nacimiento��$
��Left=�$��
10,160,0,0q�$	��Top=��� -
   $ label6��$
��DUI:��$
��Left=�$��
14,186,0,0q�$	��Top=��� -   $ label7��$
��NIT:��$
��Left=�$��
14,217,0,0q�$	��Top=��� -    ��Name$ 	TxtNombre��$
��Left=�$��23��$��
150,13,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��307���� -   $ TxtApellido��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��
150,44,0,0q��� -   $ TxtNit��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��150,220,0,0q��� -   $ TxtTelefono��$
��Left=�$��23��$��
150,75,0,0q�$
 Wrap=�$	��Top=�$	��307���� -   $ TxtDireccion��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��150,106,0,0q�(  "System.Windows.Controls.DatePicker  -   	  Name$	 dtpFecha��$
��Left=�$��150,162,0,0q�$	��Top=��� -   $ TxtDui��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��150,190,0,0q��� -   
 ��Name$
 
btnAceptar��$��Guardar��$
��Left=�$��681,160,0,0q�$	��Top=�$��75���� -    ��Name$ cmbCargo��$
��Left=�$��150,135,0,0q�$	��Top=�$	��145�� � BindingGroup &   System.Windows.Data.BindingGroup  &   System.Windows.Controls.DataGrid  -     Name$ dtgEmpleados��   AutoGenerateColumns .  $��	3,248,0,0q�$	��Top=�$	��157��$
��Left=�$	��753��   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID Empleado��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id_empleado+     Width5  /System.Windows.Controls.DataGridLengthConverter$ * $ Nombre �� �� *Nomempleado+  $ * $ Apellido�� �� *Apeempleado+  $ * $ Telefono�� �� *Numtellempleado+  $ * $ 
Dirección�� �� *Direcempleado+  $ * $ Cargo �� �� *Cargos+  $ * $ Fecha de nacimiento �� �� *Fechanacempleado+  $ * $	 Dui�� �� *Duiempleado+  $ * $	 NIT�� �� *Nitempleado+�� -   $
 BtnEliminar��$��Eliminar��$
��Left=�$��681,188,0,0q�$	��Top=�$��75��{�.  �� -   $
 	BtnEditar��$��Editar��$
��Left=�$��681,131,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -   $ txtId��$
��Left=�$��23��$��
663,14,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -   $
 btnCancelar��$��Cancelar��$
��Left=�$��681,217,0,0q�$	��Top=�$��75���� $��Cargos ��.��� ���	#FFE5E5E5.+�  -   $ 	dtgCargos�� .  $
��Left=�$��	3,163,0,0q�$	��Top=�$	��242��$	��753��   $ ID Cargo�� �� *
Id_cargo+  $ * $ Titulo �� �� *	NomCargo1+  $ * $ Salario�� �� *
Salario1+  $ * $ Descripción�� �� *DescripcionCargo1+�� -   $ 
label_Copy��$��Titulo del cargo:��$
��Left=�$��	10,19,0,0q�$	��Top=��� -   $ label1_Copy��$��Salario:��$
��Left=�$��	10,50,0,0q�$	��Top=��� -   $ label2_Copy��$��Descripción del cargo:��$
��Left=�$��	10,81,0,0q�$	��Top=��� -   $ txtNomCargo��$
��Left=�$��23��$��
150,22,0,0q�$
 Wrap=�$	��Top=�$	��307���� -   $ 
txtSalario��$
��Left=�$��23��$
 Wrap=�$	��Top=�$��79��$��
150,53,0,0q��� -    $ txtDescripcionCargo��$
��Left=�$��43��$��
150,84,0,0q�$
 Wrap=�$	��Top=�$	��307�� �� 	IsEnabled . �� -!   $
 btnGuardarCargo��$��Guardar��$
��Left=�$��
681,50,0,0q�$	��Top=�$��75���� -"   $
 btnEliminarCargo��$��Eliminar��$
��Left=�$��
681,78,0,0q�$	��Top=�$��75��{�.  �� -#   $
 btnEditarCargo��$��Editar��$
��Left=�$��
681,21,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -$   $ 
txtIdCargo��$
��Left=�$��23��$��
544,10,0,0q�$
 Wrap=�$	��Top=�$��46��$ -1.543,0.739&�{�.  �� -%   $
 btnCancelarCargo��$��Cancelar��$
��Left=�$��681,107,0,0q�$	��Top=�$��75���� $��Control de inventario��.��� ���	#FFE5E5E5.+��� -&   $ tabControl3��$
��Left=�$	��423��$��	-11,0,0,0q�$	��Top=�$	��789��.@��� $��Zapatos��.��� ���	#FFE5E5E5.+��� -'   $ tabControl4��$
��Left=�$	��395��$	��Top=�$	��783��.@��� $��	Productos��.��� ���	#FFE5E5E5$��10,-2,-10,2q�.+��� -(   $ label_Copy1��$��Nombre del producto:��$
��Left=�$��	10,10,0,0q�$	��Top=��� -)   $ label1_Copy1��$��Estilo:��$
��Left=�$��	10,41,0,0q�$	��Top=��� -*   $ label2_Copy1��$��Marca:��$
��Left=�$��	10,72,0,0q�$	��Top=��� -+   $ label3_Copy��$��Tallas Disponibles:��$
��Left=�$��
10,103,0,0q�$	��Top=��� -,   $ label4_Copy��$��Cantidad Disponible:��$
��Left=�$��
10,129,0,0q�$	��Top=�$ -0.067,0.161&��� --   $ label5_Copy��$��Colores gama:��$
��Left=�$��
10,160,0,0q�$	��Top=��� -.   $ label6_Copy��$��Proveedor: ��$
��Left=�$��
14,186,0,0q�$	��Top=��� -/   $ txtNombreZapato��$
��Left=�$��23��$��
150,13,0,0q�$
 Wrap=�$	��Top=�$	��307���� -0   $ 	txtTallas��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��150,106,0,0q��� -1   $
 btnGuardarZapato��$��Guardar��$
��Left=�$��681,160,0,0q�$	��Top=�$��75��  -2   $ 
dtgZapatos�� .  $��
10,248,0,0q�$	��Top=�$	��109��$
��Left=�$	��753��   $ 	ID Zapato�� �� *
Id_zapatos+  $ * $ Nombre gama �� �� *NomGaZapato1+  $ * $ Estilo�� �� *	Estilos+  $ * $ Marca�� �� *Marcas+  $ * $ Tallas disponibles�� �� *TallasDisponibles1+  $ * $ Cantidad disponible �� �� *CantidadDisponible1+  $ * $ Colores Gama �� �� *ColoresGama1+  $ * $ Viajero�� �� *
Viajeros+�� -3   $
 btnEliminarZapato��$��Eliminar��$
��Left=�$��681,188,0,0q�$	��Top=�$��75��{�.  �� -4   $
 btnEditarZapato��$��Editar��$
��Left=�$��681,131,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -5   $ txtIdZapato��$
��Left=�$��23��$��
663,14,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -6   $
 btnCancelarZapato��$��Cancelar��$
��Left=�$��681,217,0,0q�$	��Top=�$��75���� -7   $ 
cmbEstilos��$
��Left=�$��
150,45,0,0q�$	��Top=�$	��120���� -8   $ 	cmbMarcas��$
��Left=�$��
150,72,0,0q�$	��Top=�$	��120���� -9   $ cmbViajeros��$
��Left=�$��150,186,0,0q�$	��Top=�$	��120���� -:   $ txtCantidad��$
��Left=�$��23��$��150,133,0,0q�$
 Wrap=�$	��Top=�$	��307���� -;   $ txtColoresGanma��$
��Left=�$��23��$��150,161,0,0q�$
 Wrap=�$	��Top=�$	��307���� $��Estilos y marcas��.��� ���	#FFE5E5E5.+�  -<   $ 
dtgEstilos�� .  $
��Left=�$��
10,213,0,0q�$	��Top=�$	��154��$	��398��   $ 	ID Estilo�� �� *	Id_estilo+  $ * $ Estilo �� �� *
NomEstilo1+  $ * $ Genero�� �� *GeneroEstilo1+  $ * $ Descripción�� �� *Descripcíon1+  -=   $ 	dtgMarcas�� .  $
��Left=�$��413,213,0,0q�$	��Top=�$ -4.667,4&�$	��154��$	��364��   $ ID Marca�� �� *	Id_marcas+  $ * $ Marca �� �� *	NomMarca1+�� ->   $ label_Copy2��$��Estilo��$
��Left=�$��	10,19,0,0q�$	��Top=�$��50���� -?   $ label1_Copy2��$��Genero��$
��Left=�$��	10,50,0,0q�$	��Top=�$��50���� -@   $ label2_Copy2��$��Descripción del cargo:��$
��Left=�$��	10,81,0,0q�$	��Top=�$��73���� -A   $ 	txtEstilo��$
��Left=�$��23��$��	83,22,0,0q�$
 Wrap=�$	��Top=�$	��161���� -B   $ 	txtGenero��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��161��$��	83,53,0,0q��� -C   $ txtDescripciónEstilo��$
��Left=�$��43��$��	83,84,0,0q�$
 Wrap=�$	��Top=�$	��161�� . �� -D   $
 btnGuardarEstilo��$��Guardar��$
��Left=�$��
352,50,0,0q�$	��Top=�$��48���� -E   $
 btnEliminarEstilo��$��Eliminar��$
��Left=�$��
352,78,0,0q�$	��Top=�$��48��{�.  �� -F   $
 btnEditarEstilo��$��Editar��$
��Left=�$��
352,21,0,0q�$	��Top=�$��48��$ -2.12,0.085&�{�.  �� -G   $ txtIdEstilo��$
��Left=�$��23��$��
275,10,0,0q�$
 Wrap=�$	��Top=�$��24��$ -1.543,0.739&�{�.  �� -H   $
 btnCancelarEstilo��$��Cancelar��$
��Left=�$��352,107,0,0q�$	��Top=�$��48���� -I   $ label_Copy3��$��Marca��$
��Left=�$��
417,19,0,0q�$	��Top=�$��43���� -J   $ txtMarca��$
��Left=�$��23��$��
481,22,0,0q�$
 Wrap=�$	��Top=�$	��139���� -K   $
 btnGuardarMarca��$��Guardar��$
��Left=�$��
708,50,0,0q�$	��Top=�$��48���� -L   $
 btnEliminarMarca��$��Eliminar��$
��Left=�$��
708,78,0,0q�$	��Top=�$��48��{�.  �� -M   $
 btnEditarMarca��$��Editar��$
��Left=�$��
708,21,0,0q�$	��Top=�$��48��$ -2.12,0.085&�{�.  �� -N   $ 
txtIdMarca��$
��Left=�$��23��$��
660,10,0,0q�$
 Wrap=�$	��Top=�$��21��$ -1.543,0.739&�{�.  �� -O   $
 btnCancelarMarca��$��Cancelar��$
��Left=�$��708,107,0,0q�$	��Top=�$��48���� $��Distribuidores��.��� ���	#FFE5E5E5$��10,-1,-10,1q�.+�  -P   $ dtgPRoveedores�� .  $
��Left=�$��3,163,0,-10q�$	��Top=�$	��242��$	��753��   $ ID Proveedor�� �� *Id_proveedor+  $ * $ Distribuidora �� �� *NomEmpresa1+  $ * $ Telefono�� �� *TelefonoEmpresa1+  $ * $ Correo�� �� *CorreoEmpresa1+�� -Q   $ label_Copy4��$��Distribuidora:��$
��Left=�$��	10,19,0,0q�$	��Top=��� -R   $ label1_Copy3��$��	Telefono:��$
��Left=�$��	10,50,0,0q�$	��Top=��� -S   $ label2_Copy3��$��Correo:��$
��Left=�$��	10,81,0,0q�$	��Top=��� -T   $ txtproveedor��$
��Left=�$��23��$��
150,22,0,0q�$
 Wrap=�$	��Top=�$	��307���� -U   $ txttelefonoproveedor��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��
150,53,0,0q��� -V   $ txtcorreoproveedor��$
��Left=�$��23��$��
150,84,0,0q�$
 Wrap=�$	��Top=�$	��307�� . �� -W   $
 btnguardarproveedores��$��Guardar��$
��Left=�$��
681,50,0,0q�$	��Top=�$��75���� -X   $
 btneliminarproveedores��$��Eliminar��$
��Left=�$��
681,78,0,0q�$	��Top=�$��75��{�.  �� -Y   $
 btneditarproveedores��$��Editar��$
��Left=�$��
681,21,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -Z   $ txtidproveedor��$
��Left=�$��23��$��
544,10,0,0q�$
 Wrap=�$	��Top=�$��46��$ -1.543,0.739&�{�.  �� -[   $
 btncancelarproveedores��$��Cancelar��$
��Left=�$��681,107,0,0q�$	��Top=�$��75���� $��Viajeros��.��� ���	#FFE5E5E5.+��� -\   $ label_Copy5��$��Nombre��$
��Left=�$��	10,10,0,0q�$	��Top=��� -]   $ label1_Copy4��$��Apellido��$
��Left=�$��	10,41,0,0q�$	��Top=��� -^   $ label2_Copy4��$��Telefono��$
��Left=�$��	10,72,0,0q�$	��Top=��� -_   $ label3_Copy1��$��	Proveedor��$
��Left=�$��
10,103,0,0q�$	��Top=��� -`   $ label4_Copy1��$��Correo��$
��Left=�$��
10,129,0,0q�$	��Top=�$ -0.067,0.161&��� -a   $ txtnombreviajero��$
��Left=�$��23��$��
150,13,0,0q�$
 Wrap=�$	��Top=�$	��307���� -b   $ txtapellidoviajero��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��
150,44,0,0q��� -c   $
 btnguardarviajero��$��Guardar��$
��Left=�$��698,103,0,0q�$	��Top=�$��75��  -d   $ dtgViajeros�� .  $��
10,207,0,0q�$	��Top=�$	��178��$
��Left=�$	��763��   $ 
ID Viajero�� �� *
Id_viajero+  $ * $ Nombre �� �� *NomViajero1+  $ * $ Apellido�� �� *ApeViajero1+  $ * $ Telefono�� �� *TelefonoViajero1+  $ * $ 	Proveedor�� �� *Proveedores+  $ * $ Correo�� �� *CorreoViajero1+�� -e   $
 btneliminarviajero��$��Eliminar��$
��Left=�$��698,131,0,0q�$	��Top=�$��75��{�.  �� -f   $
 btneditarviajero��$��Editar��$
��Left=�$��
698,74,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -g   $ txtidviajero��$
��Left=�$��23��$��
663,14,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -h   $
 btncancelarviajero��$��Cancelar��$
��Left=�$��698,160,0,0q�$	��Top=�$��75���� -i   $ cmbproveedoresviajero��$
��Left=�$��150,103,0,0q�$	��Top=�$	��120���� -j   $ txtcorreoviajero��$
��Left=�$��23��$��150,133,0,0q�$
 Wrap=�$	��Top=�$	��307���� -k   $ txttelefonoviajero��$
��Left=�$��23��$��
150,75,0,0q�$
 Wrap=�$	��Top=�$	��307���� $��Pagos y ventas��.��� ���	#FFE5E5E5.+��� -l   $ tabControl1��$
��Left=�$	��433��$	��Top=�$	��788��.@��� $��
Comisiones��.��� ���	#FFE5E5E5.+��� -m   $ labelempleado��$��Empleado��$
��Left=�$��	29,20,0,0q�$	��Top=��� -n   $ labelcomision��$��Valor comisión��$
��Left=�$��	29,51,0,0q�$	��Top=��� -o   $ 
labelventa��$��Venta��$
��Left=�$��	29,82,0,0q�$	��Top=��� -p   $
 btnGuardarComision��$��Guardar��$
��Left=�$��
698,52,0,0q�$	��Top=�$��75��  -q   $ dtgComisiones�� .  $��
10,169,0,0q�$	��Top=�$	��216��$
��Left=�$	��763��   $ ID Comision�� �� *Id_comision+  $ * $ 	Empleado �� �� *	Empleados+  $ * $ Valor Comision�� �� *ValorComision1+  $ * $ Venta�� �� *Ventas+�� -r   $
 btnEliminarComision��$��Eliminar��$
��Left=�$��
698,80,0,0q�$	��Top=�$��75��{�.  �� -s   $
 btnEditarComision��$��Editar��$
��Left=�$��
698,23,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -t   $ txtidComision��$
��Left=�$��23��$��
563,10,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -u   $
 btnCancelarComision��$��Cancelar��$
��Left=�$��698,109,0,0q�$	��Top=�$��75���� -v   $ cmbVenta��$
��Left=�$��
169,86,0,0q�$	��Top=�$	��120��$ 0.55,-1.091&��� -w   $ txtvalorcomision��$
��Left=�$��23��$��
169,54,0,0q�$
 Wrap=�$	��Top=�$	��120���� -x   $ cmbEmpleado��$
��Left=�$��
169,25,0,0q�$	��Top=�$	��263���� $��	Prestamos��.��� ���	#FFE5E5E5.+��� -y   $ labelempleado_Copy��$��Venta��$
��Left=�$��	29,20,0,0q�$	��Top=��� -z   $ labelcomision_Copy��$��Abono Deuda��$
��Left=�$��	29,51,0,0q�$	��Top=��� -{   $ labelventa_Copy��$��Saldo Pendiente��$
��Left=�$��	29,82,0,0q�$	��Top=��� -|   $
 btnGuardarPrestamos��$��Guardar��$
��Left=�$��
698,52,0,0q�$	��Top=�$��75��  -}   $ dtgPrestamos�� .  $��
10,169,0,0q�$	��Top=�$	��216��$
��Left=�$	��763��   $ ID Prestamo�� �� *Id_prestamo+  $ * $ Venta �� �� *Ventas+  $ * $ Abono Deuda�� �� *AbonoDeuda1+  $ * $ Saldo Pendiente�� �� *SaldoPendiente1+�� -~   $
 btnEliminarPrestamos��$��Eliminar��$
��Left=�$��
698,80,0,0q�$	��Top=�$��75��{�.  �� -   $
 btnEditarPrestamos��$��Editar��$
��Left=�$��
698,23,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -�   $ txtidprestamo��$
��Left=�$��23��$��
563,10,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -�   $
 btnCancelarPRestamos��$��Cancelar��$
��Left=�$��698,109,0,0q�$	��Top=�$��75���� -�   $ txtAbonoDeuda��$
��Left=�$��23��$��
169,54,0,0q�$
 Wrap=�$	��Top=�$	��120���� -�   $ cmbVentaprestamo��$
��Left=�$��
169,25,0,0q�$	��Top=�$	��120���� -�   $ txtSaldoPendiente��$
��Left=�$��23��$��
169,85,0,0q�$
 Wrap=�$	��Top=�$	��120���� $��Ventas��.��� ���	#FFE5E5E5.+��� -�   $ labelempleado_Copy1��$��Venta��$
��Left=�$��	29,20,0,0q�$	��Top=��� -�   $ labelcomision_Copy1��$��Producto��$
��Left=�$��	29,51,0,0q�$	��Top=��� -�   $ labelventa_Copy1��$��Empleado��$
��Left=�$��	29,82,0,0q�$	��Top=��� -�   $
 btnguardardetavent��$��Guardar��$
��Left=�$��
698,52,0,0q�$	��Top=�$��75��  -�   $ dtgdetavent�� .  $��
10,196,0,0q�$	��Top=�$	��189��$
��Left=�$	��763��   $ ID Detavent�� �� *Id_detalleVenta+  $ * $ Venta �� �� *Ventas+  $ * $ Producto�� �� *	Zapatos+  $ * $ Empleado�� �� *	Empleados+  $ * $ Monto�� �� *TotalPagar1+  $ * $ Cantidad producto�� �� *CantidadProducto1+�� -�   $
 btneliminardetavent��$��Eliminar��$
��Left=�$��
698,80,0,0q�$	��Top=�$��75��{�.  �� -�   $
 btneditardetavent��$��Editar��$
��Left=�$��
698,23,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -�   $ txtiddetavent��$
��Left=�$��23��$��
563,10,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -�   $
 btncancelardetavent��$��Cancelar��$
��Left=�$��698,109,0,0q�$	��Top=�$��75���� -�   $ txttotalpagardetavent��$
��Left=�$��23��$��169,116,0,0q�$
 Wrap=�$	��Top=�$	��179���� -�   $ cmbventadetavent��$
��Left=�$��
169,25,0,0q�$	��Top=�$	��179���� -�   $! txtcantidadproductodetanvet��$
��Left=�$��23��$��169,147,0,0q�$
 Wrap=�$	��Top=�$	��179���� -�   $ label8��$��Total a pagar��$
��Left=�$��
31,113,0,0q�$	��Top=��� -�   $ cmbproductodetavent��$
��Left=�$��
169,55,0,0q�$	��Top=�$	��179���� -�   $ cmbempleadodetavent��$
��Left=�$��
169,85,0,0q�$	��Top=�$	��179���� -�   $ label9��$��Cantidad de producto:��$
��Left=�$��
31,147,0,0q�$	��Top=��� $��Clientes��.��� ���	#FFE5E5E5.+��� -�   $ label_Copy6��$��Nombre��$
��Left=�$��	10,10,0,0q�$	��Top=��� -�   $ label1_Copy5��$��Apellido��$
��Left=�$��	10,41,0,0q�$	��Top=��� -�   $ label2_Copy5��$��Telefono��$
��Left=�$��	10,72,0,0q�$	��Top=��� -�   $ label4_Copy2��$��
Dirección��$
��Left=�$��
10,100,0,0q�$	��Top=�$ -0.067,0.161&��� -�   $ txtnombrecliente��$
��Left=�$��23��$��
150,13,0,0q�$
 Wrap=�$	��Top=�$	��307���� -�   $ txtapellidocliente��$
��Left=�$��23��$
 Wrap=�$	��Top=�$	��307��$��
150,44,0,0q��� -�   $
 btnguardarcliente��$��Guardar��$
��Left=�$��698,103,0,0q�$	��Top=�$��75��  -�   $ dtgClientes�� .  $��
10,207,0,0q�$	��Top=�$	��178��$
��Left=�$	��763��   $ 
ID Cliente�� �� *
Id_cliente+  $ * $ Nombre �� �� *NomCliente1+  $ * $ Apellido�� �� *ApeCliente1+  $ * $ Telefono�� �� *TelCliente1+  $ * $ 
Dirección�� �� *DireccionCliente1+�� -�   $
 btneliminarcliente��$��Eliminar��$
��Left=�$��698,131,0,0q�$	��Top=�$��75��{�.  �� -�   $
 btneditarcliente��$��Editar��$
��Left=�$��
698,74,0,0q�$	��Top=�$��75��$ -2.12,0.085&�{�.  �� -�   $ txtidcliente��$
��Left=�$��23��$��
663,14,0,0q�$
 Wrap=�$	��Top=�$��46��{�.  �� -�   $
 btncancelarcliente��$��Cancelar��$
��Left=�$��698,160,0,0q�$	��Top=�$��75���� -�   $ txtdireccióncliente��$
��Left=�$��23��$��150,104,0,0q�$
 Wrap=�$	��Top=�$	��307���� -�   $ txttelefonocliente��$
��Left=�$��23��$��
150,75,0,0q�$
 Wrap=�$	��Top=�$	��307���� -�   $ tabControl2��$	��100��$	��100��.@��� $��TabItem��.��� ���	#FFE5E5E5�� $��TabItem��.��� ���	#FFE5E5E5