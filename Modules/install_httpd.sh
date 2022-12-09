#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
scp /Modules/
echo "<html>
  <head>
<title>Flowers Webserver</title>
 </head>
 <body>
<center>
    <h1>Created by terraformlavers</h1>
</center>

<table border="5" bordercolor="grey" align="center">
    <tr>
        <th colspan="3">My Favourite Flowers</th> 
    </tr>
    <tr>
        <th>Spring</th>
        <th>Summer</th>
        <th>Fall</th>
    </tr>
    <tr>
        <td><img src="daffodil.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="rose.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="hibiscus.jpeg" alt="" border=3 height=200 width=300></img></th>
    </tr>
    <tr>
        <td>><img src="tulip.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="daisy.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="sunflower.jpeg" alt="" border=3 height=200 width=300></img></th>
    </tr>
</table>

  </body>
  <html>
"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
sudo mkdir /var/www/images
sudo aws s3 sync s3://${ver.env}-terraformlovers/images/ /var/www/html
