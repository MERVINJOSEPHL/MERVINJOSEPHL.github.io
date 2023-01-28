<%-- 
    Document   : coin
    Created on : 28 Jan, 2023, 7:02:14 PM
    Author     : mervin joseph.l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COIN CHANGE PROBLEM</title>
        <style>
            body{
                background-color: lightskyblue;
            }
            div{
                text-align: center;
                background-color: lightcyan;
                float: center;
                margin-right: 5%;
                margin-left: 5%;
                margin-top: 0%;
                padding:0%;
                border-color: darkcyan;
            }
            tr{
                text-justify: auto;
                font-size: x-large;
                text-align: center;
            }
            table{
                text-align: center;
            }
            #mmm{
                float:center;
                font-size: large;
                font-family: sans-serif;
                font-style: italic;
                text-align: center;
                color: white;
                background-color: black;
                margin-right: 5%;
                margin-left: 5%;
                margin-top: 2%;
                padding:2%;
            }
        
            </style>
        <script>
            function func(){
                let text=document.getElementById("a").value;
                let num=document.getElementById("b").value;
                let count=document.getElementById("c").value;
                myArray = text.split(",");
                ct=count.split(",");
                if(ct.length!==myArray.length){
                    window.alert("Length doesn't match for denomination and count ");
                }
                for(let j=0;j<myArray.length;j++){
                    myArray[j]=Number(myArray[j]);
                    ct[j]=Number(ct[j]);
                }   
               for(let i=0;i<myArray.length;i=i+1){
                   min=myArray[i];
                   for(let j=i+1;j<myArray.length;j=j+1){
                       if(min>myArray[j]){
                           temp=myArray[j];
                           myArray[j]=myArray[i];
                           myArray[i]=temp;
                           min=temp;
                           temp=ct[i];
                           ct[i]=ct[j];
                           ct[j]=temp;
                       }
                   }
               }
                var tbodyRef = document.getElementById('n').getElementsByTagName('tbody')[0];

// Insert a row at the end of table
var newRow = tbodyRef.insertRow();

// Insert a cell at the end of the row
var newCell = newRow.insertCell();
var anothercell=newRow.insertCell();

// Append a text node to the cell
var newText = document.createTextNode("Value"+":");
newCell.appendChild(newText);
var newText = document.createTextNode("Count");
newCell.appendChild(newText);
                for(let i=myArray.length-1;i>=0;i=i-1){
             let count=0;       
            while(myArray[i]<=num && ct[i]>0){
                count+=1;
                num=num-myArray[i];
                ct[i]=ct[i]-1;
            }
            var tbodyRef = document.getElementById('n').getElementsByTagName('tbody')[0];

// Insert a row at the end of table
var newRow = tbodyRef.insertRow();

// Insert a cell at the end of the row
var newCell = newRow.insertCell();
var anothercell=newRow.insertCell();

// Append a text node to the cell
var newText = document.createTextNode(myArray[i]+":");
newCell.appendChild(newText);
var newText = document.createTextNode(count);
newCell.appendChild(newText);
                }
            }
            
            </script>
    </head>
    <body>
        <p id="mmm">Coin Exchange Problem </p>
        <div class="main">
        <h1>ENTER THE DENOMINATIONS<sub>(separated by , )</sub> </h1>
        <input type="TEXT"  id="a">
        <h1>ENTER THE NUMBER OF COINS IN EACH DENOMINATION<sub>(separated by ,)</sub></h1>
        <input type="text" id="c">
        <h1>ENTER THE COST</h1>
        <input type="TEXT" id="b">
        <input type="submit" onclick='func()'>
        <table id="n" >
            <tbody >
    <tr>
        <td></td>
      <td></td>
    </tr>
  </tbody>
        </table>
        </div>
    </body>
</html>
