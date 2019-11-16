function MarketItem(will, type, date, location) {
this.will = will;
this.type = type;
this.date = date;
this.location =location;
}

//var MarketItem = new MarketItem("", "",",");
document.getElementById("marketitems").innerHTML =
"<div id="marketitems" class="card border-success mb-3" style="max-width: 18rem;"> "
+
" <div class="card-header bg-transparent border-success"> " 

+  //here goe params

+"</div>"
   <div class="card-body text-success">
     <h5 class="card-title">20 lb corn</h5>
       <img src="images/corn1.jfif" class="img-thumbnail" alt="...">
   </div>
  <div class="card-footer bg-transparent border-success">Location: Mayaguez, PR</div>
</div>;
