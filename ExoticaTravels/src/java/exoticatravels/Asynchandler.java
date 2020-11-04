package exoticatravels;

import javax.servlet.AsyncContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

class Asynchandler implements Runnable{
AsyncContext ctx;
   HttpServletRequest rq;
HttpSession session;
String requestingPageName;
    public Asynchandler(AsyncContext aCtx)
    {
        this.ctx=aCtx;
        rq=(HttpServletRequest)ctx.getRequest();
         requestingPageName = rq.getParameter("PageName");
    }
    public void run()
  {

    session = rq.getSession(false);
 if(requestingPageName.equals("Destination"))
  {  
    String selectedDestination = rq.getParameter("Destination");
    session.setAttribute("selDestination", selectedDestination);
     ctx.dispatch("Hotels.jsp");
  }
else if(requestingPageName.equals("Hotels"))
  {
    
    String selectedHotel = ctx.getRequest().getParameter("HotelName");
    String noOfDays = ctx.getRequest().getParameter("numOfDays");
    session.setAttribute("selHotel", selectedHotel);
    session.setAttribute("numDays", noOfDays);
    ctx.dispatch("Flights.jsp");

}
else if(requestingPageName.equals("FlightsServlet"))
{
    String selectedAirline = ctx.getRequest().getParameter("Airline");
    session.setAttribute("selAirline", selectedAirline);
    ctx.dispatch("Cart.jsp");
}    
}
}
