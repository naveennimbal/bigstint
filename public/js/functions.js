/**
 * Created by naveen on 18/06/16.
 */
$(document).ready(function(){

   // alert("dfdshf");

  /*  $("#addToCart").click(function(){

       // alert("dfdshf");
        $("#resform").submit(function(){
            console.log(this);
            alert("for submit");
            return false;
        })
    })
    */




    $("#resform").submit(function(){
        //console.log(this);
       // alert("for ssssubmit");
        if($('[name="price"]').is(':checked')){
            //alert("it is checked now ");
            amount = $('[name="price"]:checked').val();
            //alert(amount);
            optionChecked = $('[name="price"]:checked');
            //console.log(optionChecked);
            optionDataString  = optionChecked.data('optiondata');
            //console.log(optionDataString);
            optionArray = optionDataString.split('-#-');

           // console.log(optionChecked.data('optiondata'),"Option String");
           // console.log(optionArray);
            var request = $.ajax({
                url: "/cart/add",
                method: "POST",
                data: { price : amount,optionId:optionArray[0],serviceId:$("#serviceId").val() },
                //dataType: "html"
            });

            request.done(function( msg ) {
                if(msg.status=="notLogin"){
                    //$("#loginModal").modal('show');
                    //alert("hi");
                    window.location.href = window.location.origin+"/"+"register/login" ;
                }
                if(msg.status=="exist"){
                    $("#statusMessage").html("This Package already exist in your cart");
                    $("#statusModal").modal('show');
                    setTimeout("hideStatusModal()",3000);
                }
                if(msg.status=="added"){
                    $("#statusMessage").html("Successfully added to your cart");
                    $("#statusModal").modal('show');
                    setTimeout("hideStatusModal()",3000);
                }
                if(msg.status=="exceed"){
                    $("#statusMessage").html("Amount exceed for cart <br> Please process it then try again ");
                    $("#statusModal").modal('show');
                    //addCartTableRow(ele);
                    setTimeout("hideStatusModal()",2000);

                }

            });

            request.fail(function( jqXHR, textStatus ) {
                alert( "Request failed: " + textStatus );
            });

        } else {
            alert("Please choose a package ");
        }

        return false;
    })





    //this is for the broadcasting the resume
    $("#broadcastForm").submit(function(){
        alert($("#industry").val());
        //return false;
    });

});



function addtoCart(ele){
    //alert("it is checked now ");
    //console.log(ele);
    amount = $(ele).val();
    //alert(amount);
    //optionChecked = $('[name="price"]:checked');
   // console.log(optionChecked);
    optionDataString  = $(ele).data('optiondata');
    //console.log(optionDataString);
    optionArray = optionDataString.split('-#-');
    dateAdded = $.now();

    // console.log(optionChecked.data('optiondata'),"Option String");
    // console.log(optionArray,"optionArray");
    var request = $.ajax({
        url: "/cart/add",
        method: "POST",
        data: { price : amount,optionId:optionArray[0],serviceId:optionArray[2],"dateAdded":dateAdded },
        beforeSend:function(){
            showLoader("Adding package to Cart");
        },
        cache:false
        //dataType: "html"
    });

    request.done(function( msg ) {
        if(msg.status=="notLogin"){
            //$("#loginModal").modal('show');
            alert(msg.status);
            window.location.href = window.location.origin+"/"+"register/login" ;

        }
        if(msg.status=="exist"){
            $("#statusMessage").html("This Package already exist in your cart");
            $("#statusModal").modal('show');
            setTimeout("hideStatusModal()",1000);
        }
        if(msg.status=="added"){
            $("#statusMessage").html("Successfully added to your cart");
            $("#statusModal").modal('show');
            addCartTableRow(ele);
            setTimeout("hideStatusModal()",1000);

        }
        if(msg.status=="exceed"){
            $("#statusMessage").html("Amount exceed for cart <br> Please process it then try again ");
            $("#statusModal").modal('show');
            //addCartTableRow(ele);
            setTimeout("hideStatusModal()",2000);

        }

    });

    request.fail(function( jqXHR, textStatus ) {
        alert( "Request failed: " + textStatus );
    });
    return false;
}

function addCartTableRow(ele){
   // console.log($(ele).parent().parent().parent(),"eeee");
    //console.log(ele);
    price = $(ele).val();
    optionDataString  = $(ele).data('optiondata');
    //console.log(optionDataString,"OptionString");
    optionArray = optionDataString.split('-#-');
    //console.log(optionDataString,"OptionArray");

    serviceString = optionArray[3];
    if(optionArray[1]!="" || optionArray[1]!=" "){
        serviceString += "( "+ optionArray[1]+" )";
    }
    serviceOptionId = optionArray[0];
    optionTitle = optionArray[1];
    serviceId = optionArray[2];


   // html = "<tr class='cartTableRow'><td class='cartTableCell'> ";
    //html += "<span style='margin-left: 1em;'>"++"</span></td> ";
   // html += "<td class='cartTableCell'>  "+price+"</td><td class='cartTableCell'>";
   // html += "<span style='color: red'><a href='#' data-price='"+price+"' data-optiondata ='"+serviceOptionId+"-#-"+optionTitle+"-#-"+serviceId+" onclick='removePackage(this)' onclick='removePackage(this)'>X </a></span>";
    //html += "</td></td></tr>";



    html ="<div class='serviceItem'>";
    html +="<div class='col-md-12 col-sm-12 col-xs-12'>";
    html +="<div class='blog-post'>";

    html +="<div class='col-md-8 col-sm-8 col-xs-8'>";
    html +="<h3 class='post-title'>";
    html +="<a href='#'>"+serviceString+"</a>";
    html +=optionTitle;
    html +="</a>";
    html +="</h3>";
    html +="</div>";
    html +="<div class='col-md-3 col-sm-3 col-xs-3' >";
    html +="<h3 class='post-title'>";

    html +=price;

    html +="</h3>";
    html +="</div>";
    html +="<div class='col-md-1 col-sm-1 col-xs-1' >";
    html +="<h4 style='color: #ab1045'>";
    html +="<span style='color: red'>";
    html +="<a href='#' data-optiondata ='"+serviceOptionId+"-#-"+optionTitle+"' onclick='removePackage(this)' data-price='"+price+"' >X ";

    html +="</a></span>";

    html +="</h4>";
    html +="</div>";
    html +="</div>";
    html +="</div>";
    html +="</div>";



    $("#emptyCart").hide();
    $("#checkoutForm").show();



    $('#cartTable').append(html);
    elementRemove = $(ele).closest('.item');
    //elementRemove = $(elementRemove).closest('tr');
    //console.log(elementRemove);
    totalAmount = $("#totalAmount").text();
    //console.log(totalAmount);
    totalAmount = parseInt(totalAmount) + parseInt(price);
    $("#totalAmount").text(totalAmount);
    $("#totalAmountForm").val(totalAmount);
    //$(elementRemove).hide('slow');

}


function removePackage(ele){
    totalAmount = 0;
    //console.log(ele.closest("tr"));
    price = $(ele).data('price');
    //console.log($(ele).data('price'));

    optionDataString  = $(ele).data('optiondata');
    //console.log(optionDataString,"OptionString");
    optionArray = optionDataString.split('-#-');
    //console.log(optionDataString,"OptionArray");


    var request = $.ajax({
        url: "/cart/delete",
        method: "POST",
        data: { optionId:optionArray[0],serviceId:optionArray[2]},
        beforeSend:function(){
            showLoader("Removing package from Cart");
        },
        cache:false
        //dataType: "html"
    });

    request.done(function( msg ) {
        //console.log(msg);

        if(msg.data.status=="success"){
            $("#statusMessage").html("Packed Removed from Cart");
            $("#statusModal").modal('show');
            $(ele).closest('.serviceItem').hide("slow");
            setTimeout("hideStatusModal()",1000);

            elementRemove = $(ele).closest('tr');
            //elementRemove = $(elementRemove).closest('tr');
            //console.log(elementRemove);
            totalAmount = $("#totalAmount").text();
            //console.log(totalAmount,"totalAmount");
            totalAmount = parseInt(totalAmount) -  parseInt(price);
            //console.log(price,"Price");
            if(totalAmount == 0 ){
                $("#emptyCart").show();
                $("#checkoutForm").hide();

            }

            $("#totalAmount").text(totalAmount);
            $("#totalAmountForm").val(totalAmount);
        }


    });



    //$(elementRemove).hide('slow');

}

function hideStatusModal(){
    $('#statusModal').modal('hide');
}

function showLoader(action){

    html = "<span style='display:inline-block; vertical-align:middle'><image src='/images/loader.gif'></span><span style='display:inline-block; vertical-align:middle; margin-left: 2em;'>"+ action+"</span>";
    $("#statusMessage").html(html);
    $("#statusModal").modal('show');
}

$(document).ready(function(){
    $("#capture").click(function () {
        capHtml = $("#captureTd").html();
        captureOrderId = $("#capture").attr("rel");

        $.ajax({
                method: "POST",
                url: "/payment/capture",
                beforeSend:function(){$("#captureTd").html("Capturing Wait...")},
                data: { orderId: captureOrderId , location: "Boston" }
            })
            .done(function( msg ) {
               if(msg.noAdmin==2){
                   alert("no a valid request");
                   $("#captureTd").html(capHtml);
               }
                if(msg.noAdmin==1){
                    alert("Payment captured");
                    $("#captureTd").html("Captured By "+msg.admin);
                }
                if(msg.noAdmin==0){
                    window.location = "/payment/login";
                }

            });
    })

})


$("#paymentForm").submit(function(){
    if($('#tnc').not(':checked')){
        alert("Please accept Terms and Conditions");
    }
});