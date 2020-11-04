package exoticatravels;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.*;
import javax.persistence.Persistence;
import java.util.List;

public class ValidateAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String WelcomeAdmin = "admin";
    private static final String WelcomeCustomer= "customer";
     private static final String Error= "error";
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    private boolean validateUser(String uID, String Pwd, String group){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ExoticaTravelsPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction userTransaction = em.getTransaction();
        userTransaction.begin();
        Query queryCredentials = em.createNativeQuery("Select UserID From Registration WHERE UserID='"+uID+"' and password='"+Pwd+"' and groupname='"+group+"'");
        List result = queryCredentials.getResultList();
        userTransaction.commit();
        
        if (result.size()<1){
            return false;
        }
        else if (result.size()==1){
            return true;
        }
        else{
            return false;
        }
}
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {      
        
        LoginBean lb=(LoginBean)form;
        String userid=lb.getUserid();
            String password=lb.getPassword();
        String role=lb.getR1();

        if (validateUser(userid,password,role) && role.equals("administrator")){
        HttpSession session = request.getSession();
        session.setAttribute("User", userid);
         return mapping.findForward(WelcomeAdmin);
        }
         else if (validateUser(userid,password,role) && role.equals("customer") ){
            HttpSession session = request.getSession();
            session.setAttribute("User", userid);
            return mapping.findForward(WelcomeCustomer);
         }
        else{
          return mapping.findForward(Error);
        }
    }
}
