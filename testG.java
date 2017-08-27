public class TestG
{  
 public void finalize()
{
System.out.println("object is garbage collected");
}  
 public static void main(String args[])
{  
  TestG s1=new TestG();  
  TestG s2=new TestG();  
  s1=null;  
  s2=null;  
  System.gc();  
 }  
}  