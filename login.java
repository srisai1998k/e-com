import java.util.*;
class reg
{
String user,pass,user1,pass1;
void register()
{
Scanner sc = new Scanner(System.in);
System.out.println("enter your username");
user = sc.next();
System.out.println("enter your password");
 pass = sc.next();
}
void display(String str,String str1)
{
System.out.println("the username"+str);
System.out.println("the password"+str1);
}
}
class login extends reg
{
void login1()
{
Scanner sc1 = new Scanner(System.in);
System.out.println("enter your username");
String user1 = sc1.next();
System.out.println("enter your password");
String pass1 = sc1.next();
}
void validate()
{
if(user.equals(user1)&&user.equals(pass1))
{
display(user1,pass1);
}
else
{
System.out.println("invalid");
}
}
public static void main(String args[])
{
login l = new login();
l.register();
l.login1();
l.validate();
}
}
