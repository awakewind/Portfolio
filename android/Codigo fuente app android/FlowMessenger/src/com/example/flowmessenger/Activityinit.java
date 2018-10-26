package com.example.flowmessenger;


import android.support.v7.app.ActionBarActivity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public class Activityinit extends ActionBarActivity {
	EditText user, pass;
	AlertDialog alertDialog;
	private SharedPreferences pref;
	private String prefName = "Mypref";
	private String valcam1 = "user";

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_activityinit);
		user = (EditText)findViewById(R.id.edtuser);
		pass = (EditText)findViewById(R.id.edtpass);

		
	}

    public void register(){
		pref = getSharedPreferences(prefName, MODE_PRIVATE);
		SharedPreferences.Editor editor = pref.edit();
		editor.putString(valcam1, user.getText().toString());
		editor.commit();
	}
	
	public void OnLogin(View view){
		alertDialog = new AlertDialog.Builder(view.getContext()).create();
		alertDialog.setTitle("Información: ");
		String usuario = user.getText().toString();
		String contra = pass.getText().toString();
		if(usuario.equals("")){
			alertDialog.setMessage("Tiene que escribir un usuario");
			alertDialog.show();
		}else if(contra.equals("")){
			alertDialog.setMessage("Tiene que escribir una contraseña");
			alertDialog.show();
		}else{
			String type = "login";
			register();
			BackgroundWorker backgroundWorker = new BackgroundWorker(this); 
			backgroundWorker.execute(type , usuario, contra);
		}
		
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activityinit, menu);
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
