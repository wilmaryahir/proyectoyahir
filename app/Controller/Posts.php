<?php 
class Posts extends Controller{

    public function __construct()
    {
        if(!isLoggedIn()){
            redirect('users/login');
        }
        $this->postModel = $this->model('Post');
        $this->userModel = $this->model('User');
    }

    public function index(){

        $posts = $this->postModel->getPosts();
        $data = [
            'posts' => $posts
        ];

        $this->view('posts/index', $data);
    }

    public function add(){
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
            $data = [
                'title' => trim($_POST['title']),
                'body' => trim($_POST['body']),
                'user_id' => $_SESSION['user_id'],
                'title_err' => '',
                'body_err' => '',
            ];

            if(empty($data['title'])){
                $data['title_err'] = 'Ingrese un titulo';
            }
            if(empty($data['body'])){
                $data['body_err'] = 'Ingrese el contenido';
            }
            if(empty($data['title_err']) && empty($data['body_err'])){
                if($this->postModel->addPost($data)){
                    flash('post_message', 'Se agregó tu publicación');
                    redirect('posts');
                }else{
                    die('ocurrió un error');
                }
               
            }else{
                $this->view('posts/add', $data);
            }
        }else{
            $data = [
                'title' => (isset($_POST['title']) ? trim($_POST['title']) : ''),
                'body' =>  (isset($_POST['body'])? trim($_POST['body']) : '')
            ];

            $this->view('posts/add', $data);
        }
    }


}                            
                        