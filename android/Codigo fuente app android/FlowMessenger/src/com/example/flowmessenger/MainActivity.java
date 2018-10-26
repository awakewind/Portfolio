package com.example.flowmessenger;



import android.support.v7.app.ActionBarActivity;

import android.content.Intent;
import android.content.SharedPreferences;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

 


public class MainActivity extends ActionBarActivity {
	private SharedPreferences pref;
	private String prefName = "Mypref";
	private String volcan = "true";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Inited();

    }
    public void sesio(View v){
    	Intent myIntent = new Intent(v.getContext(), Activityinit.class);
		startActivityForResult(myIntent, 0);
    }
    
    public void Inited(){
    	pref = getSharedPreferences(prefName, MODE_PRIVATE);
    	String tryme = pref.getString(volcan, "false");
    	if (tryme.equals("true")){
    		Intent myIntent = new Intent(getApplicationContext(), Activitymenu.class);
    		startActivityForResult(myIntent, 0);
    	}
    }
    
    public void crear(View v){
    	Intent myIntent = new Intent(v.getContext(), Activityregistrar.class);
		startActivityForResult(myIntent, 0);
    }
   

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
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
