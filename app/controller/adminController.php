<?php
class adminController extends Controller
{

    public function __construct()
    {
        $this->modelFashionModel = $this->model('modelFashion');
        $this->modelCategory = $this->model('categoryModel');

    }

    public function index()
    {
        $this->view('admin/index' , [
        ]);

        $this->view->render();
    }

    public function apiModelFashion(){
        $data = $this->modelFashionModel->getModelAll();
        header('Content-type: application/json');
        echo json_encode($data);
        // return json_encode($data);
    }

    public function apiCategoryModel(){
        $data = $this->modelCategory->getAllCategory();
        header('Content-type: application/json');
        echo json_encode($data);
        // return json_encode($data);
    }
    public function apiModelFashionSingle($id){
        $data = $this->modelFashionModel->getModelSingle($id);
        header('Content-type: application/json');
        echo json_encode($data);
    }

    public function createModelFashion()
    {
        $image = $_FILES['image'];
        $name = $_POST['name'];
        $height = $_POST['height'];
        $bust = $_POST['bust'];
        $waist = $_POST['waist'];
        $hips = $_POST['hips'];
        $shoe = $_POST['shoe'];
        $category_id = $_POST['category_id'];
        $final_image = $this->uploadFileManager($image);
        $arr =[ $final_image, $name, $height, $bust, $waist, $hips,  $shoe, $category_id];
        $data = $this->modelFashionModel->createModel($arr);
        return $data;
    }

    public function updateModelFashionSingle($id)
    {   

        $idd=$_POST['id'];
        $image = $_FILES['image'];
        $name = $_POST['name'];
        $height = $_POST['height'];
        $bust = $_POST['bust'];
        $waist = $_POST['waist'];
        $hips = $_POST['hips'];
        $shoe = $_POST['shoe'];
        $category_id = $_POST['category_id'];
        $final_image = $this->uploadFileManager($image);
        $arr =[$final_image, $name, $height, $bust, $waist, $hips, $shoe, $category_id];
        $data = $this->modelFashionModel->updateModel($arr,$idd);
        return $data;
    }

    public function uploadFileManager($img)
    {
        $image = $img["name"];
        $tmp = $img['tmp_name'];
       
        $final_image = rand(1000,1000000).$image;        

        move_uploaded_file( $tmp, IMAGES . $final_image );
        return $final_image;
    }
}