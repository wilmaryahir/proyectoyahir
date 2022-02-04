<?php
  class Pages extends Controller {
    public function __construct(){
     
    }
    
    public function index(){
      if(isLoggedIn()){
        redirect('posts');
      }
      $data = [
        'title' => 'Bienvenido',
        'description' => '_________________________',
        'info' => '',
        'name' => '',
        'location' => '',
        'contact' => '',
        'mail' => ''
      ];
     
      $this->view('pages/index', $data);
    }

  }