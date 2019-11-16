 var list= document.getElementById('itemList');
 var input1 = document.getElementById('input1');
 var input2 = document.getElementById('input2');
//var MarketItem = new MarketItem("", "",",");

var content='';

var listCurrentItems='';
function item(owner, proposition, title, location){
  this.owner =owner;
  this.proposition = proposition;
  this.title = title;
  this.location = location;
}

var item1= new item("John", "sell","20lb corn", "Mayaguez, PR");
var items = [new item("John", "sell","20lb corn", "Mayaguez, PR"),new item("kail", "sell","10lb corn", "Mayaguez, PR");];
//list  on the market items
for (i = 0; i < 1; i++) {

content +=
'<div id="marketitems" class="card border-success mb-3" style="max-width: 18rem;"> '
+ ' <div class="card-header bg-transparent border-success">'


+  items[i].owner;+ "-" + items[i].proposition;

+   '</div> '
+   '<div class="card-body text-success"> '
+  ' <h5 class="card-title"> '

+   items[i].title

+   ' </h5> '

+  '<img src="  images/corn1.jfif  " class="img-thumbnail" alt="..."> '

+    '</div>'
+    '<div class="card-footer bg-transparent border-success">'
+   items[i].title;
+'</div>'
+ '</div>';



}
// //loop in the current own items
// for (i = 0; i < 6; i++) {
//
//
//
// listCurrentItems +=
// '<tr>'
// +'<td>'
//
// + "Owner"
//
// + '</td>'
// +'<td>'
//
// + "item id here"
//
// + '</td>'
// + '<td>'
//
// + "will"
//
// + '</td>'
// + '<td>'
// + "price"
// + '</td>'
// +'</tr>';
// }



 document.getElementById("marketitems").innerHTML = content;
//
// document.getElementById("listCurrentItems").innerHTML = listCurrentItems;
