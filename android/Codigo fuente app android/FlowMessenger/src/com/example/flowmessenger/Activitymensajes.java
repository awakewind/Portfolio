package com.example.flowmessenger;

import android.support.v7.app.ActionBarActivity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public class Activitymensajes extends ActionBarActivity {
	EditText mesg, destino;
	AlertDialog alertDialog;
	private SharedPreferences pref;
	private String prefName = "Mypref";
	private String valcam2 = "usuario";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_activitymensajes);
		mesg = (EditText)findViewById(R.id.edtMensaje);
		destino = (EditText)findViewById(R.id.edtDestinatario);
	}

	public void onMesg(View view){
		
		pref = getSharedPreferences(prefName, MODE_PRIVATE);
		String tryme = pref.getString(valcam2, "user");
		alertDialog = new AlertDialog.Builder(view.getContext()).create();
		alertDialog.setTitle("Información: ");
		String mensaje = mesg.getText().toString();
		String destinatario = destino.getText().toString();
		if(destinatario.equals("")){
			
			alertDialog.setMessage("Tiene que poner un destinatario");
			alertDialog.show();
		}else if(mensaje.equals("")){
			alertDialog.setMessage("Tiene que escribir un mensaje");
			alertDialog.show();
		}else{
			String remitente = tryme;
			String type = "mensaje";
			
			BackgroundWorker backgroundWorker = new BackgroundWorker(this); 
			backgroundWorker.execute(type , mensaje, destinatario, remitente);

		}	
	
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activitymensajes, menu);
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
