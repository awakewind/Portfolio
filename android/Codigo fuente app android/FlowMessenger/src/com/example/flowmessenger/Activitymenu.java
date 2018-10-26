package com.example.flowmessenger;


import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class Activitymenu extends ActionBarActivity {
	private SharedPreferences pref;
	private String prefName = "Mypref";
	private String valcam1 = "user";
	private String valcam2 = "usuario";
	private String volcan = "true";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_activitymenu);
		register();
	}
	
	public void Closeses(View view){
		pref = getSharedPreferences(prefName, MODE_PRIVATE);
		SharedPreferences.Editor editor = pref.edit();
		editor.putString(volcan, "false");
		editor.commit();
		Intent myIntent = new Intent(view.getContext(), MainActivity.class);
		startActivityForResult(myIntent, 0);
		finish();
	}
	
public void msg(View view){
	Intent myIntent = new Intent(view.getContext(), Activitymensajes.class);
	startActivityForResult(myIntent, 0);
}

public void msgenv(View view){
	Intent myIntent = new Intent(view.getContext(), Activityenviados.class);
	startActivityForResult(myIntent, 0);
}

public void msgrec(View view){
	Intent myIntent = new Intent(view.getContext(), Activityrecibidos.class);
	startActivityForResult(myIntent, 0);
}

public void register(){
	pref = getSharedPreferences(prefName, MODE_PRIVATE);
	String tryme = pref.getString(valcam1, "user");
	SharedPreferences.Editor editor = pref.edit();
	editor.putString(volcan, "true");
	editor.putString(valcam2, tryme);
	editor.commit();
}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activitymenu, menu);
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
