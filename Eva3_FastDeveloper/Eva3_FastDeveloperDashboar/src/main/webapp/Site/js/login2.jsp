<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Fast-Development| Login</title> 
      <link rel="stylesheet" href="Site/Html/css/loginStyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
   <body>
      <div class="content">
         <div class="text">
            Login al sistema
         </div>
         <form action="#">
            <div class="field">
               <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" required="required">
               <span class="fas fa-user"></span>
               <label>Usuario</label>
            </div>
            <div class="field">
               <input type="password" class="form-control" id="passUsuario" name="passUsuario" required="required">
               <span class="fas fa-lock"></span>
               <label for="passUsuario"> Que no sea 123456</label>
            </div>
            <div class="forgot-pass">
               <a href="#">Olvidó algo, ¿No?</a>
            </div>
            <!-- <input type="submit"> -->
            <button type="submit" class="btn btn-outline-success btn-block" formaction="dashboard_inicio.jsp">Déntrate!</button>
            
            <div class="sign-up">
               ¿No te has registrado?<br>
               <a href="#">Crea una cuenta, imbécil!</a>
            </div>
         </form>
      </div>
   </body>
   <script>
	
		$(document).ready(function (){
			
		});
		
		function LoginAcc(){
			
			if( $("#nombreUsuario").val()== '' || $("#passUsuario").val()==''){
				
				alert("Favor de ingresar ambos datos")
				return 0;
				
			}else{
				//recordar que hay q asignar clave y usuario fijo
				
				var ObjSend={
						'nombreUsuario':$("#nombreUsuario").val(),
						'passUsuario':$("#passUsuario").val()
						
				}
				
				//se que a lo mejor ajax complica, pero queria
				//practicar lo que hizo el profe
				//me enrede para entenderlo la verdad jajaja
				
				$.ajax({
					type:"POST",
					data:ObjSend,
					url:"login2.do",
					success:function(varObjBackend){
						//console.log(varObjBackend);
						if(varObjBackend==true){
							alert("Redireccionando")
							location.href="dashboard_inicio.do"
							
						}else{
							alert("Datos incorrectos")
						}
					}
				});

			}			
		}	

	</script>
</html>