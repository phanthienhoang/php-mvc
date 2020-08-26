<?php

class DB{

    public $con;
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "php-mvc";
    private $charset = "utf8";

    public function __construct(){
        $this->con = $this->connection();
    }


    public function connection (){        
        try {
            $dsn = "mysql:host=".$this->servername.";dbname=".$this->dbname .";charset=".$this->charset;
            $pdo =  new PDO($dsn,$this->username,$this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
            $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);         
            return $pdo;
        } catch (\PDOException $e) {
            echo "connect failed " . $e->getMessage();
        }
      
    }
}

// class DB{
//     public $con;
//     protected $servername = "localhost";
//     protected $username = "root";
//     protected $password = "";
//     protected $dbname = "php-mvc";
//     protected $charset = "utf8";

//     function __construct(){
//         $this->con = mysqli_connect($this->servername, $this->username, $this->password);
//         mysqli_select_db($this->con, $this->dbname);
//         mysqli_query($this->con, "SET NAMES 'utf8'");
//     }

// }

