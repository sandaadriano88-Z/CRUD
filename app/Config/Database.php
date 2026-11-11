<?php


class Database{

    private $hostname = "cn-hex-mold.sage.cloud.layerbase.dev";
    private $username = "root";
    private $password = "TDXMm2sVOQm9oJWcyv1TFVgm";
    private $dbname = "cn";
    public $port = "47183";

    public $con;

    public function dbConnect(){
        $ds = "mysql:host={$this->hostname};dbname={$this->dbname};port={$this->port};charset=utf8mb4";
        
        try{
            $this->con = new PDO($ds, $this->username, $this->password);
            $this->con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            return $this->con;
        }catch(PDOException $e){
            die("Could not connect to the database ". $e->getMessage());
        }
    }
}





?>