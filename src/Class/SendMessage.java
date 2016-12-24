package Class;

import java.io.UnsupportedEncodingException;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
/**
 * Created by 王承 on 2016/12/24.
 */
public class SendMessage {
	public static void Send()throws Exception
	{
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
		NameValuePair[] data ={ new NameValuePair("Uid", "Tedstack"),new NameValuePair("Key", "3843db63e8f6797fe3f8"),new NameValuePair("smsMob","13917100342"),new NameValuePair("smsText","验证码：350402  【华东师范大学】")};
		post.setRequestBody(data);
     	client.executeMethod(post);
	    Header[] headers = post.getResponseHeaders();
	    int statusCode = post.getStatusCode();
	    System.out.println("statusCode:"+statusCode);
	    for(Header h : headers)
	    {
	    	System.out.println(h.toString());
	    }
	    String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
	    System.out.println(result);
	    post.releaseConnection();
	}
}
