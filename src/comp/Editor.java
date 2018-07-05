package comp;

import java.io.*;

//import java.nio.file.Files;
//import java.nio.file.Paths;

public class Editor 
{ 
    static String result="";
    static String result1="";
   
   
	public static String compile(String c) throws IOException
	
    { 
		
		try {
			 result="";
			 result1="";
		//FileOutputStream fout = new FileOutputStream(new File("C:\\files\\"+request.getParameter("class")+".java"));
		FileOutputStream fout = new FileOutputStream(new File("C:\\files\\test.java"));
	//	byte by[] = request.getParameter("code").getBytes();
		byte by[] = c.getBytes();
		fout.write(by);
		fout.close(); 

		//String command="C:\\Program Files\\Java\\jdk1.8.0_151\\bin\\javac C:\\files\\"+request.getParameter("class")+".java";
		String command="C:\\Program Files\\Java\\jdk1.8.0_151\\bin\\javac C:\\files\\test.java";
		Process p=Runtime.getRuntime().exec(command);
		p.waitFor();
		BufferedReader error = new BufferedReader(new InputStreamReader(p.getErrorStream()));
		
		while(true)
		{
		    String temp = error.readLine();
		    if(temp!=null)
		    {
		        result=result+temp;
		        result=result+"\n";
		    }
		    else break;
		}
		//System.out.println(result);
		Process p2 = Runtime.getRuntime().exec("C:\\Program Files\\Java\\jdk1.8.0_151\\bin\\java -cp C:\\files test");
 		BufferedReader output = new BufferedReader(new InputStreamReader(p2.getInputStream()));
		if(result.equals(""))
			
				{
		while(true)
			{
			    String temp = output.readLine();
			    if(temp!=null)
			    {
			        result1=result1+temp;
			        result1=result1+"\n";
			    }
			    else break;	
	}
			output.close();
		//System.out.println(result1);
			return result1;
		}
		
	
		}
		catch(Exception e1){System.out.println(e1);}
		
		
		return result;
}
	
}
