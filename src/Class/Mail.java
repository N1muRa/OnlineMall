package Class;
import java.io.Serializable;
/**
 * Created by Vam on 2017/1/4.
 */
public class Mail implements Serializable {
    public static final String ENCODEING="UTF-8";
    private String host;
    private String sender;
    private String receiver;
    private String name;
    private String username;
    private String password;
    private String subject;
    private String message;
    public String getHost()
    {
        return host;
    }
    public void setHost(String Host)
    {
        host=Host;
    }
    public String getSender()
    {
        return sender;
    }
    public void setSender(String Sender)
    {
        sender=Sender;
    }
    public String getReceiver()
    {
        return receiver;
    }
    public void setReceiver(String Receiver)
    {
        receiver=Receiver;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String Name)
    {
        name=Name;
    }
    public String getUsername()
    {
        return username;
    }
    public void setUsername(String Username)
    {
        username=Username;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String Password)
    {
        password=Password;
    }
    public String getSubject()
    {
        return subject;
    }
    public void setSubject(String Subject)
    {
        subject=Subject;
    }
    public String getMessage()
    {
        return message;
    }
    public void setMessage(String Message)
    {
        message=Message;
    }
}
