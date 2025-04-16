<?php 
    class SubcategoryModel {
        private $db;
        public function __construct() {
            $this->db = Database::connect();
        }

        public function getProductsBySubcategory($subcatergoryId){
            $stmt = $this->db->prepare("SELECT * FROM Products WHERE subcategory_id = ?");
            $stmt->execute([$subcatergoryId]);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>