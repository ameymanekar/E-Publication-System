<%@page import="java.io.*, java.sql.*"%>
<%

String saveFile="";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

String saveFile2="C:/Users/Asus/Documents/NetBeansProjects/E paper/web/pdf/"+saveFile;

                 
                try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into filename4(fileName,filepath) values(?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,saveFile);
            smt.setString(2,saveFile2);
            smt.executeUpdate();
            con.close();
            
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        

File f = new File(saveFile2);

FileOutputStream fileOut = new FileOutputStream(f);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%>
    <b>You have successfully upload the file by the name of:</b>
     <%
 out.println(saveFile);
   }
response.sendRedirect("uploadpaper.jsp");
%>

    <a href="viewFiles.jsp">View Files</a>