package com.example.flowmessenger;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.AsyncTask;

public class BackgroundWorker extends AsyncTask<String,Void,String> {
	Context context;
	AlertDialog alertDialog;
	


	BackgroundWorker(Context ctx){
		context = ctx;
	}
	@Override
	protected String doInBackground(String... params) {
		String type = params[0];
		String login_url = "https://awakewind.000webhostapp.com/login.php";
		String register_url = "https://awakewind.000webhostapp.com/register.php";
		String mensaje_url = "https://awakewind.000webhostapp.com/mensaje.php";
		if(type.equals("login")){
			try {
				String user_name = params[1];
				String password = params[2];
				URL url = new URL(login_url);
				HttpURLConnection httURLConnection = (HttpURLConnection)url.openConnection();
				httURLConnection.setRequestMethod("POST");
				httURLConnection.setDoOutput(true);
				httURLConnection.setDoInput(true);
				OutputStream outputStream = httURLConnection.getOutputStream();
				BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8" ));
				String post_data = URLEncoder.encode("user_name" , "UTF-8")+"="+URLEncoder.encode(user_name , "UTF-8")+"&"
						+URLEncoder.encode("password" , "UTF-8")+"="+URLEncoder.encode(password , "UTF-8") ;
				bufferedWriter.write(post_data);
				bufferedWriter.flush();
				bufferedWriter.close();
				outputStream.close();
				InputStream inputStream = httURLConnection.getInputStream();
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
				String result="";
				String line="";
				while((line = bufferedReader.readLine())!=null){
					result += line;
				}
				bufferedReader.close();
				inputStream.close();
				httURLConnection.disconnect();
				return result;
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(type.equals("register")){
			try {
				String usuario = params[1];
				String user_name = params[2];
				String password = params[3];
				URL url = new URL(register_url);
				HttpURLConnection httURLConnection = (HttpURLConnection)url.openConnection();
				httURLConnection.setRequestMethod("POST");
				httURLConnection.setDoOutput(true);
				httURLConnection.setDoInput(true);
				OutputStream outputStream = httURLConnection.getOutputStream();
				BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8" ));
				String post_data = URLEncoder.encode("nombre" , "UTF-8")+"="+URLEncoder.encode(usuario , "UTF-8")+"&"
						+URLEncoder.encode("user_name" , "UTF-8")+"="+URLEncoder.encode(user_name , "UTF-8")+"&"
						+URLEncoder.encode("password" , "UTF-8")+"="+URLEncoder.encode(password , "UTF-8") ;
				bufferedWriter.write(post_data);
				bufferedWriter.flush();
				bufferedWriter.close();
				outputStream.close();
				InputStream inputStream = httURLConnection.getInputStream();
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
				String result="";
				String line="";
				while((line = bufferedReader.readLine())!=null){
					result += line;
				}
				bufferedReader.close();
				inputStream.close();
				httURLConnection.disconnect();
				return result;
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(type.equals("mensaje")){
			try {
				String mensg = params[1];
				String dest = params[2];
				String remt = params[3];
				URL url = new URL(mensaje_url);
				HttpURLConnection httURLConnection = (HttpURLConnection)url.openConnection();
				httURLConnection.setRequestMethod("POST");
				httURLConnection.setDoOutput(true);
				httURLConnection.setDoInput(true);
				OutputStream outputStream = httURLConnection.getOutputStream();
				BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8" ));
				String post_data = URLEncoder.encode("mensaje" , "UTF-8")+"="+URLEncoder.encode(mensg , "UTF-8")+"&"
						+URLEncoder.encode("destino" , "UTF-8")+"="+URLEncoder.encode(dest , "UTF-8")+"&"
						+URLEncoder.encode("remitente" , "UTF-8")+"="+URLEncoder.encode(remt , "UTF-8") ;
				bufferedWriter.write(post_data);
				bufferedWriter.flush();
				bufferedWriter.close();
				outputStream.close();
				InputStream inputStream = httURLConnection.getInputStream();
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
				String result="";
				String line="";
				while((line = bufferedReader.readLine())!=null){
					result += line;
				}
				bufferedReader.close();
				inputStream.close();
				httURLConnection.disconnect();
				return result;
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}

	protected void onPreExecute(){
		alertDialog = new AlertDialog.Builder(context).create();
		alertDialog.setTitle("Información: ");
		
	}
	
	protected void onPostExecute(final String result){
		
		alertDialog.setMessage(result);
		alertDialog.show();
alertDialog.setOnDismissListener(new OnDismissListener(){
			
			@Override
			public void onDismiss(final DialogInterface arg0) {
				if(result.equals("Bienvenido!")){
					ingresar();
				}else if(result.equals("Usuario Registrado")){
					tryme();
				}else if(result.equals("Mensaje enviado")){
					ingresar();
				}else{
					
				}
		}});
		
	}
	public void tryme(){
		Intent intent = new Intent(context, Activityinit.class);
		context.startActivity(intent);
		
		((Activity) context).finish();
	}
	public void ingresar(){
		Intent intent = new Intent(context, Activitymenu.class);
		context.startActivity(intent);
		
		((Activity) context).finish();
	}
	public void Default(){
		Intent intent = new Intent(context, MainActivity.class);
		context.startActivity(intent);
		
		((Activity) context).finish();
	}
	
	protected void OnProgressUpdate(Void... values){
		super.onProgressUpdate(values);
	}
}
