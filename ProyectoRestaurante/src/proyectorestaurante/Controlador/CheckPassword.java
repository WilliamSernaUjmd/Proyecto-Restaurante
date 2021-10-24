/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectorestaurante.Controlador;

/**
 *
 * @author roger
 */
public class CheckPassword {
    public boolean verificarPassword(char passArray[]){
        for (int i = 0; i < passArray.length; i++) {
            char c = passArray[i];
            //si no es letra o numero entonces no es valido
            if(!Character.isLetterOrDigit(c)){
                return false;
            }
        }
        return true;
    }
}
