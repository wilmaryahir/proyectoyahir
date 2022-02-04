<?php
class Users extends Controller{
    public function __construct()
    {
        $this->userModel = $this->model('User');
    }

    public function register(){
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){
           // formulario de registro
           $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING); 
            $data = [
                'name' => trim($_POST['name']),
                'email' => trim($_POST['email']),
                'password' => trim($_POST['password']),
                'confirm_password' => trim($_POST['confirm_password']),
                'name_err' => '',
                'email_err' => '',
                'password_err' => '',
                'confirm_password_err' => '' 
            ];

            //validar el nombre
            if(empty($data['name'])){
                $data['name_err'] = 'Ingrese su nombre por favor';
            }

            //validar email
            if(empty($data['email'])){
                $data['email_err'] = 'Ingrese su email por favor';
            }else{
                //Verificarl el email
                if($this->userModel->findUserByEmail($data['email'])){
                    $data['email_err'] = 'El email ingresado se encuentra en uso';
                }
            }

            //validar contraseña
            if(empty($data['password'])){
                $data['password_err'] = 'Ingrese una contraseña por favor';
            }elseif(strlen($data['password']) < 6){
                $data['password_err'] = 'La contraseña debe contener un mínimo de 6 caracteres';
            }

            //Validar confirmar contraseña
            if(empty($data['confirm_password'])){
                $data['confirm_password_err'] = 'Vuelva a ingresar su contraseña';
            }else{
                if($data['password'] != $data['confirm_password'])
                {
                    $data['confirm_password_err'] = 'Las contraseñas no coinciden';
                }
            }

           //Si no hay errores en el registro
            if(empty($data['name_err']) && empty($data['email_err']) && empty($data['password_err']) && empty($data['password_confirm_err'])){
                $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
                if($this->userModel->register($data)){
                    flash('registrado exitoso', 'ya puede iniciar sesión');
                    redirect('users/login');
                }
            }else{
                $this->view('users/register', $data);
            }
        }else{
            //datos del formulario de registro
            $data = [
                'name' => '',
                'email' => '',
                'password' => '',
                'confirm_password' => '',
                'name_err' => '',
                'email_err' => '',
                'password_err' => '',
                'confirm_password_err' => '' 
            ];
            //load view
            $this->view('users/register', $data);          
        }
    }

    public function login(){
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){
           // formulario de logueo
           $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING); 
           $data = [
               'email' => trim($_POST['email']),
               'password' => trim($_POST['password']),
               'email_err' => '',
               'password_err' => ''
           ];

            //validar el email
            if(empty($data['email'])){
                $data['email_err'] = 'Ingrese su email por favor';
            }else{
                if($this->userModel->findUserByEmail($data['email'])){
                    //user found
                }else{
                    $data['email_err'] = 'Usuario no encontrado';
                }
            }

            //validar la contraseña
            if(empty($data['password'])){
                $data['password_err'] = 'Ingrese su contraseña por favor';
            }elseif(strlen($data['password']) < 6){
                $data['password_err'] = 'La contraseña debe contener un mínimo de 6 caracteres';
            }
            
            //si no hay campos vacíos 
            if(empty($data['email_err']) && empty($data['password_err'])){
                $loggedInUser = $this->userModel->login($data['email'], $data['password']);
                if($loggedInUser){
                    //Al iniciar sesión
                    $this->createUserSession($loggedInUser);
                }else{
                    $data['password_err'] = 'Contraseña incorrecta';
                    $this->view('users/login', $data);
                }
            }else{
                $this->view('users/login', $data);
            }

        }else{

            $data = [
                'email' => '',
                'password' => '',
                'email_err' => '',
                'password_err' => ''
            ];

            $this->view('users/login', $data);          
        }
    }

    //incio de sesión del usuario
    public function createUserSession($user){
        $_SESSION['user_id'] = $user->id;
        $_SESSION['name'] = $user->name;
        $_SESSION['email'] = $user->email;
        redirect('posts/index');
    }

    //Incio de sesió del usuario
    public function logout(){
        unset($_SESSION['user_id']);
        unset($_SESSION['name']);
        unset($_SESSION['email']);
        session_destroy();
        redirect('users/login');
    }
}