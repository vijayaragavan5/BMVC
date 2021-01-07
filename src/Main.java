import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

class Employee {
    private String emailTo;
    private String emailSubject;
    private String emailBody;
   
    public Employee() {
       
    }

    public Employee(String emailTo, String emailSubject, String emailBody,
            String emailAttachments) {
        super();
        this.emailTo = emailTo;
        this.emailSubject = "ADMIN CARD";
        this.emailBody = "your hall ticket is issued. so please check the below links";
        
    }

    public String getEmailTo() {
        return emailTo;
    }

    public void setEmailTo(String emailTo) {
        this.emailTo = emailTo;
    }

    public String getEmailSubject() {
        return emailSubject;
    }

    public void setEmailSubject(String emailSubject) {
        this.emailSubject = emailSubject;
    }

    public String getEmailBody() {
        return emailBody;
    }

    public void setEmailBody(String emailBody) {
        this.emailBody = emailBody;
    }

   
   

}

class EmployeeDao {
    private Connection con;

    private static final String GET_EMPLOYEES = "Select * From reqloc";

    private void connect() throws InstantiationException,
            IllegalAccessException, ClassNotFoundException, SQLException {
    	Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
    }

    public List<Employee> getEmployees() throws Exception {
        connect();
        PreparedStatement ps = con.prepareStatement(GET_EMPLOYEES);
        ResultSet rs = ps.executeQuery();
        List<Employee> result = new ArrayList<Employee>();
        while (rs.next()) {
            result.add(new Employee(rs.getString("emailTo"), rs
                    .getString("emailSubject"), rs.getString("emailBody"), rs
                    .getString("emailAttachments")));
            Iterator itr=result.iterator();  
            while(itr.hasNext()){  
             System.out.println(itr.next());  
            }  
        }
        disconnect();
        return result;
    }

    private void disconnect() throws SQLException {
        if (con != null) {
            con.close();
        }
    }
}

class EmailSender {
    private Session session;

    private void init() {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "100.00.000.000");
        props.put("mail.smtp.port", "20");

        session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("surendarb.shiash@gmail.com", "Shiash@19");
            }
        });
    }

    public void sendEmail(Employee e) throws MessagingException {
         init();
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress("work@gmail.com"));
         message.setRecipients(Message.RecipientType.TO,
             InternetAddress.parse(e.getEmailTo()));
         message.setSubject(e.getEmailSubject());
         message.setText(e.getEmailBody());
         Transport.send(message);
    }
    public void sendEmail(List<Employee> employees) throws MessagingException{
        for (Employee employee : employees) {
            sendEmail(employee);
        }
    }
}

public class Main {
    public static void main(String[] args) throws Exception {
        EmployeeDao dao=new EmployeeDao();
        List<Employee> list=dao.getEmployees();
        EmailSender sender=new EmailSender();
        sender.sendEmail(list);
    }
}