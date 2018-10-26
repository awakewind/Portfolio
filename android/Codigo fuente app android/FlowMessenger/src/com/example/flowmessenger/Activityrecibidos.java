package com.example.flowmessenger;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONArray;
import org.json.JSONObject;

import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.StrictMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class Activityrecibidos extends ActionBarActivity {
	private SharedPreferences pref;
	private String prefName = "Mypref";
	private String valcam2 = "usuario";
	ListView recibidos; 
	ArrayAdapter<String> adapter;
	String recibidos_url = "https://awakewind.000webhostapp.com/recibidos.php";
	String line = null;
	String result = null;
	String[] data;
	InputStream is=null;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_activityrecibidos);
		recibidos = (ListView)findViewById(R.id.listRecibidos);
		
		StrictMode.setThreadPolicy((new StrictMode.ThreadPolicy.Builder().permitNetwork().build()));

		getData();
		adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1,data);
		
		recibidos.setAdapter(adapter);
		
		
	}

	
	private void getData(){
		try {
			pref = getSharedPreferences(prefName, MODE_PRIVATE);
			String tryme = pref.getString(valcam2, "user");
			String remitente = tryme;
			String remt = remitente;
			URL url = new URL(recibidos_url);
			HttpURLConnection httURLConnection =(HttpURLConnection)url.openConnection();
			httURLConnection.setRequestMethod("POST");
			httURLConnection.setDoOutput(true);
			httURLConnection.setDoInput(true);
			OutputStream outputStream = httURLConnection.getOutputStream();
			BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8" ));
			String post_data = URLEncoder.encode("remitente" , "UTF-8")+"="+URLEncoder.encode(remt , "UTF-8");
			bufferedWriter.write(post_data);
			bufferedWriter.flush();
			bufferedWriter.close();
			outputStream.close();
			is=new BufferedInputStream(httURLConnection.getInputStream());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			StringBuilder sb = new StringBuilder();
			while((line=br.readLine()) != null){
				sb.append(line+"\n");
			}
			is.close();
			br.close();
			result=sb.toString();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			JSONArray ja = new JSONArray(result);
			JSONObject jo = null;
			data = new String[ja.length()];
			for(int i=0;i<ja.length();i++){
				jo=ja.getJSONObject(i);
				data[i] = jo.getString("textMensaje");
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void ret(View v){
		Intent myIntent = new Intent(v.getContext(), Activitymenu.class);
		startActivityForResult(myIntent, 0);
		finish();
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activityrecibidos, menu);
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
