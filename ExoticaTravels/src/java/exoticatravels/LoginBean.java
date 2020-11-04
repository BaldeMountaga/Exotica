package exoticatravels;

public class LoginBean extends org.apache.struts.action.ActionForm {
    
    private String userid,password,r1;

       public LoginBean() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    public String getPassword() {
        return password;
    }
   
    public void setPassword(String password) {
        this.password = password;
    }

    public String getR1() {
        return r1;
    }

   
    public void setR1(String r1) {
        this.r1 = r1;
    }
  
    public String getUserid() {
        return userid;
    }
  
    public void setUserid(String userid) {
        this.userid = userid;
    }
}
