
import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author yaoyi
 */
public class fitbean extends Object implements Serializable {
//    public static final String ISTATUS = "Login";
    
    private String email;
    private String password;
//    private String status;
    
    
    public fitbean(){
        email = new String();
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String s){
        email = s;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String s){
        password = s;
    }
    
//    public String getStatus(){
//        return status;
//    }
//    
//    public void setStatus(String s){
//        status = s;
//    }    
            
}
