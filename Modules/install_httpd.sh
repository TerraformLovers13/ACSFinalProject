#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
scp /Modules/
echo "<html>
  <head>
<title>TerraformCI-CD</title>
 </head>
 <body>
<center>
    <h1>Created by TerraformLovers</h1>
</center>

<table border="5" bordercolor="grey" align="center">
    <tr>
        <th colspan="3">Irina Geiman</th> 
    </tr>
    <tr>
        <th>TerraformLovers</th>
        <th>Our private IP is $myip</th>
            
    </tr>
    <tr>
        <td><img src="daffodil.jpeg" alt="shiva" border=3 height=200 width=300></img></th>
        <td><img src="rose.jpeg" alt="Carol" border=3 height=200 width=300></img></th>

    </tr>
    <tr>
        <td>><img src="hibiscus.jpeg" alt="Himanshu" border=3 height=200 width=300></img></th>
        <td><img src="tulip.jpeg" alt="Philip" border=3 height=200 width=300></img></th>

    </tr>
</table>
  </body>
  <html>
"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
sudo aws s3 sync s3://dev-terraformlovers/images/ /var/www/html