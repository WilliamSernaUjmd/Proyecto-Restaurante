/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EDU.UJMDparcial2.Controlador;

import java.io.*;
import java.util.*;
import java.util.Scanner;

public class Bitacora {

    private Scanner scn = new Scanner(System.in);
    private Calendar calendario;
    private Calendar c;
    private String dia, mes, anio, archivo, contenido, directorio, fecha;
    private int hora = 0, minutos = 0, segundos = 0;

    public void escribir(String contenido) {
        //se crea el archivo txt dentro del directorio y se valida si existe
        try {
            File file = new File("tmp.txt");
            if (file.exists()) {
                file.delete();
                file = new File("tmp.txt");
            }
            file.createNewFile();
            //se creal el archivo y se escribe dentro de el lo que contiene 
            //variable contenido
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.newLine();
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void escribirId(String contenido) {
        //se crea el archivo txt dentro del directorio y se valida si existe
        try {
            File file = new File("tmp2.txt");
            if (file.exists()) {
                file.delete();
                file = new File("tmp2.txt");
            }
            file.createNewFile();
            //se creal el archivo y se escribe dentro de el lo que contiene 
            //variable contenido
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.newLine();
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String Leer() {
        String resultado = "";
        FileReader in = null;
        try {
            in = new FileReader("tmp.txt");
            BufferedReader br = new BufferedReader(in);

            resultado = br.readLine();

            in.close();
        } catch (IOException e) {
            e.getCause();
        }
        return resultado;
    }

    public String LeerContra() {
        String resultado = "";
        FileReader in = null;
        try {
            in = new FileReader("tmp.txt");
            BufferedReader br = new BufferedReader(in);

            br.readLine();
            resultado = br.readLine();

            in.close();
        } catch (IOException e) {
            e.getCause();
        }
        return resultado;
    }

    public String LeerIdOrden() {
        String resultado = "";
        FileReader in = null;
        try {
            in = new FileReader("tmp2.txt");
            BufferedReader br = new BufferedReader(in);

            resultado = br.readLine();

            in.close();
        } catch (IOException e) {
            e.getCause();
        }
        return resultado;
    }

    public void crearBitacora(String usuario) {
        //se toman los datos del calendario y horario para meterlos en variables

        this.calendario = Calendar.getInstance();
        this.c = new GregorianCalendar();
        hora = calendario.get(Calendar.HOUR_OF_DAY);
        minutos = calendario.get(Calendar.MINUTE);
        segundos = calendario.get(Calendar.SECOND);
        dia = Integer.toString(c.get(Calendar.DATE));
        mes = Integer.toString(c.get(Calendar.MONTH) + 1);
        anio = Integer.toString(c.get(Calendar.YEAR));

        //System.out.println(hora + ":" + minutos + ":" + segundos);
        //System.out.println(dia + "_" + mes +  "_" + anio); 
        archivo = "bita_" + dia + "-" + mes + "-" + anio + ".txt";
        contenido = "Entrada: " + usuario + " " + "a las" + " " + hora + ":" + minutos + ":" + segundos + " "
                + "en la fecha" + " " + dia + "-" + mes + "-" + anio;
        directorio = "bitacora" + dia + "-" + mes + "-" + anio;
        fecha = dia + "-" + mes + "-" + anio;
        try {
            //se crea el directorio y se verifica si existe o no
            File dir = new File(directorio);
            if (!dir.exists()) {
                dir.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //se crea el archivo txt dentro del directorio y se valida si existe
        try {
            File file = new File(directorio + "/" + archivo);
            if (!file.exists()) {
                file.createNewFile();
            }
            //se creal el archivo y se escribe dentro de el lo que contiene 
            //variable contenido
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.newLine();
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cerrarSesion(String usuario) {
        this.calendario = Calendar.getInstance();
        this.c = new GregorianCalendar();
        hora = calendario.get(Calendar.HOUR_OF_DAY);
        minutos = calendario.get(Calendar.MINUTE);
        segundos = calendario.get(Calendar.SECOND);
        dia = Integer.toString(c.get(Calendar.DATE));
        mes = Integer.toString(c.get(Calendar.MONTH) + 1);
        anio = Integer.toString(c.get(Calendar.YEAR));

        //System.out.println(hora + ":" + minutos + ":" + segundos);
        //System.out.println(dia + "_" + mes +  "_" + anio); 
        archivo = "bita_" + dia + "-" + mes + "-" + anio + ".txt";
        contenido = "Salida: " + usuario + " " + "a las" + " " + hora + ":" + minutos + ":" + segundos + " "
                + "en la fecha" + " " + dia + "-" + mes + "-" + anio;
        directorio = "bitacora" + dia + "-" + mes + "-" + anio;

        try {
            File file = new File(directorio + "/" + archivo);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.newLine();
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
