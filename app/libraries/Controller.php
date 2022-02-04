<?php
   /*
   *Cargar los modelos y las vistas 
   * 
   */
  class Controller {
    // cargar el modelo
    public function model($model){
      // se necesita la ruta del archivo
      require_once '../app/Model/' . $model . '.php';

      return new $model();
    }

    // Cargar la vista 
    public function view($view, $data = []){
      // ruta de de la vista
      if(file_exists('../app/View/' . $view . '.php')){
        require_once '../app/View/' . $view . '.php';
      } else {
        die('La Vista no se encontró');
      }
    }
  }