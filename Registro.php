<?php
  #Registramos nuevos usuarios a la BD

  #Conexión a la BD
  $conexion = mysqli_connect('localhost', 'root', '', 'destinosturisticos') or die(mysqli_connect_error());
    
  if ($conexion->connect_error) {
    echo $conexion->connect_error;
  } else {
    echo 'Conexión exitosa';
  }    

  #Llamamos a la función registrar
  registrar($conexion);

  #Capturamos los campos de html (Registro) 
  function registrar($conexion){
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $correo = $_POST['correo'];
    $contraseña = $_POST['contraseña'];
    $hash = password_hash($contraseña, PASSWORD_DEFAULT, ['cost' => 10]); #Asignamos HASH a las contraseñas
    $preferencia = $_POST['preferencia'];
      
    #Hacemos la consulta para ingresar los datos a la BD
    $consulta = "INSERT INTO usuarios (idUsuario, nombre, apellidos, correo, contraseña, preferencia)
                VALUES (NULL, '$nombre', '$apellidos', '$correo', '$hash', '$preferencia');";
      
    #Ejecutamos la consulta
    $resultado = mysqli_query($conexion, $consulta);
      
    #Comprobamos el resultado de la consulta
    if ($resultado){
      echo 'Registro exitoso';
      mysqli_close($conexion);  // Cierra la conexión solo si la consulta fue exitosa
    } else {
      echo 'Error al registrar: '.mysqli_error($conexion);
      mysqli_close($conexion);  // También cierra la conexión en caso de error
    }
  }
?>