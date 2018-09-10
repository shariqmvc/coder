<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<fieldset>
<legend>Fill form values</legend>
<div ng-app="">
  <form>
   <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="name" ng-model="name" name="name" >
  </div>
  <div class="form-group">
    <label for="email">Email:</label>
    <input type="text" class="form-control" id="email" ng-model="email" name="email" >
  </div>
  <div class="form-group">
    <label for="dob">Date of Birth:</label>
    <input type="text" class="form-control" id="dob" ng-model="dob" name="dob">       
  </div>
  <div class="form-group">
    <label for="dob">Contact:</label>
    <input type="text" class="form-control" id="contact" ng-model="contact" name="contact">       
  </div>
  <div class="form-group">
    <button class="btn btn-primary" id="btnsubmit">Submit</button>
    
                
  </div>
  </form>
  
</div>
</fieldset>
</div>
</body>
<script>
$("#btnsubmit").click(function(){
alert("submitted");
	var formData = {
            name              : $('input[name=name]').val(),
            email             : $('input[name=email]').val(),
            dob    : $('input[name=dob]').val(),
            
        };
    
      $.ajax({

          type:"POST",
          url :"save",
          data:{
              name              : $('input[name=name]').val(),
              email             : $('input[name=email]').val(),
              dob    : $('input[name=dob]').val(),
              contact: $('input[name=contact]').val()
          }
          
              
          
   }).done(function(data){
        alert(data);
	   });

	   
	
});
</script>
<script>
  $( function() {
    $( "#dob" ).datepicker();
  } );
  </script>
</html>