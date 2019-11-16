 var list= document.getElementById('itemList');
 var input1 = document.getElementById('input1');
 var input2 = document.getElementById('input2');
//var MarketItem = new MarketItem("", "",",");

var content='';

var listCurrentItems='';

//list  on the market items
for (i = 0; i < 2; i++) {

content +=
'<div id="marketitems" class="card border-success mb-3" style="max-width: 18rem;"> '
+ ' <div class="card-header bg-transparent border-success">'


+  "buy or sell here "

+   '</div> '
+   '<div class="card-body text-success"> '
+  ' <h5 class="card-title"> '

+    "title var here"

+   ' </h5> '

+  '<img src="  images/corn1.jfif  " class="img-thumbnail" alt="..."> '

+    '</div>'
+    '<div class="card-footer bg-transparent border-success">'
+   'Location: Mayaguez, PR '
+'</div>'
+ '</div>';



}
//loop in the current own items
for (i = 0; i < 6; i++) {



listCurrentItems +=
'<tr>'
+'<td>'

+ "Owner"

+ '</td>'
+'<td>'

+ "item id here"

+ '</td>'
+ '<td>'

+ "will"

+ '</td>'
+ '<td>'
+ "price"
+ '</td>'
+'</tr>';
}


var updateInputs = function () {
  //loopp the listCurrentItems and find corns
  var newcontent ="";
  if(input1 === "corn"){
    //times of corns
  for (i = 0; i < 1; i++) {

  newcontent +=
  '<div id="marketitems" class="card border-success mb-3" style="max-width: 18rem;"> '
  + ' <div class="card-header bg-transparent border-success">'


  +  "buy or sell here "

  +   '</div> '
  +   '<div class="card-body text-success"> '
  +  ' <h5 class="card-title"> '

  +    "title var here"

  +   ' </h5> '

  +  '<img src="  images/corn1.jfif  " class="img-thumbnail" alt="..."> '

  +    '</div>'
  +    '<div class="card-footer bg-transparent border-success">'
  +   'Location: Mayaguez, PR '
  +'</div>'
  + '</div>';



  }
  document.getElementById("marketitems").innerHTML = newcontent;
  }


}
//
// if (input2.addEventListener) {
//     input2.addEventListener('click', function () {
//         updateInputs();
//     });
// }
 document.getElementById("marketitems").innerHTML = content;

document.getElementById("listCurrentItems").innerHTML = listCurrentItems;
