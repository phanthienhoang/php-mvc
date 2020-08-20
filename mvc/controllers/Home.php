<?php

class Home extends Controller{

    function index(){
        $teo = $this->model("Customer");
        $this->view("index", [
            "Customer" => $teo->getCustomer()
        ]);
    }

}
?>