<%-- 
    Document   : index
    Created on : Sep 17, 2015, 8:06:07 PM
    Author     : PL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <center>
            <br/><h2>Input Data Mahasiswa</h2><br/>
            <form action="simpanMahasiswa" method="POST">
                    <table>
                        <tr>
                            <td>Nama</td>   
                            <td>:</td>   
                            <td><input type="text" name="nama" value="" /></td>   
                        </tr>
                        <tr>
                            <td>Alamat</td>   
                            <td>:</td>   
                            <td><input type="text" name="alamat" value="" /></td>   
                        </tr>
                        <tr>
                            <td>Nomor Hp</td>   
                            <td>:</td>   
                            <td><input type="text" name="nohp" value="" /></td> 
                        </tr>
                        <tr>
                            <td>Hobi</td>   
                            <td>:</td>   
                            <td>
                                <select name="hobi">
                                    <option>Renang</option>
                                    <option>Mandi</option>
                                    <option>Makan</option>
                                </select>
                            </td> 
                        </tr>
                        <tr>
                            <td/><td/>
                            <td><input type="submit" value="SIMPAN" /></td>
                        </tr>
                    </table>
            </form>
            
            <%
                try{
                    String status = request.getAttribute("status").toString();
                    int angka = Integer.parseInt(request.getAttribute("angka").toString());
                    out.print(status);
                    out.print(angka+"");
                } catch (NullPointerException e ){
                    e.printStackTrace();
                }
            %>
            
         </center>
    </body>
</html>
