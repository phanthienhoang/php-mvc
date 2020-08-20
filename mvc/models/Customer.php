<?php
class Customer extends DB{

    public function getCustomer(){
        $sql = "SELECT * FROM customers";
        return mysqli_query($this->con, $sql);
    }

}
?>