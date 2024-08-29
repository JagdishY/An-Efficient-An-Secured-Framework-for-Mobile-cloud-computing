<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String username=(String)session.getAttribute("username");%>
<html>
    
    <head>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>An Efficient and Secured Framework for Mobile Cloud Computing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div id="image">
            <h1><font color="white" style="italic">An Efficient and Secured Framework for Mobile Cloud Computing</font></h1>
             <div class="menu">
            <ul>
                 <li>
                     <a href="index.html">logout</a>
                </li>
               
                 <li>
                     <a href="ViewFiles.jsp">View Files</a>
                </li>
                 
                <li>
                     <a href="FileUpload.jsp">File Upload</a>
                </li>
                <li>
                     <a href="UserHome.jsp">Home</a>
                </li>
            </ul>
           
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:450px;margin: 100px;"><br><br>
                <center><h1>Upload File Here</h1></center>
                <div style="margin-left:  350px;">
                <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                            <label style="font-size: 23px">File Name</label><input class="textbox" type="text" placeholder="Enter your File Name" name="fname" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px">File Keyword </label><input class="textbox" type="text" placeholder="Enter your Keyword" name="fkey" style="margin-left: 45px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px">File Browse</label><input  type="file"  name="file" size="50" style="margin-left: 60px;width: 250px" required=""/><br /><br /><br />
                            <input type="submit" value="Submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
                            <input type="reset" value="Reset" class="button" style="margin-left: 35px;margin-top: -10px;width: 100px;"/>
                        </form> 
                </div>
            </div>
            </div>
            
            
        </div>
    </body>
</html>
