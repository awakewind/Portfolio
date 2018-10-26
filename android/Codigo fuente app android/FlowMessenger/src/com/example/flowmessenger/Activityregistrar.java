package com.example.flowmessenger;


import android.support.v7.app.ActionBarActivity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public class Activityregistrar extends ActionBarActivity {
	EditText nombre, usuario, contra;
	String str_nombre, str_usuario, str_contra;
	AlertDialog alertDialog;


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_activityregistrar);
		nombre = (EditText)findViewById(R.id.edtnombre);
		usuario = (EditText)findViewById(R.id.edtusuario);
		contra = (EditText)findViewById(R.id.edtcontras);
	}

	
	public void onReg(View view){
		alertDialog = new AlertDialog.Builder(view.getContext()).create();
		alertDialog.setTitle("Información: ");
		String str_nombre = nombre.getText().toString();
		String str_usuario = usuario.getText().toString();
		String str_contra = contra.getText().toString();
		if(str_nombre.equals("")){
			alertDialog.setMessage("Tiene que escribir un nombre");
			alertDialog.show();
		}else if(str_usuario.equals("")){
			alertDialog.setMessage("Tiene que escribir un nombre de usuario");
			alertDialog.show();
		}else if(str_contra.equals("")){
			alertDialog.setMessage("Tiene que escribir una contraseña");
			alertDialog.show();
		}else{
			String type = "register";
			
			BackgroundWorker backgroundWorker = new BackgroundWorker(this); 
			backgroundWorker.execute(type , str_nombre, str_usuario, str_contra);
		}
		

	}
	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activityregistrar, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
