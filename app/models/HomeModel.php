<?php
require_once "config/database.php";

class HomeModel {
    private $db;

    public function __construct() {
        $this->db = Database::connect();
    }

    public function getFeaturedProducts() {
        $stmt = $this->db->prepare("SELECT p.*, f.product_image_file FROM Featured_Products f 
                                    JOIN Products p ON f.product_id = p.product_id 
                                    ORDER BY f.sort_order ASC");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCategories() {
        $stmt = $this->db->prepare("SELECT * FROM Categories LIMIT 6");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProductsByCategory($category_id) {
        $stmt = $this->db->prepare("SELECT * FROM Products WHERE category_id = ? LIMIT 5");
        $stmt->execute([$category_id]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
