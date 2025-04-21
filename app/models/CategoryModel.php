<?php

class CategoryModel {
    private $db;

    public function __construct() {
        $this->db = new mysqli('localhost', 'root', '', 'your_db_name');
    }

    public function getProductsByCategoryId($id) {
        $stmt = $this->db->prepare("
            SELECT p.* FROM products p
            JOIN subcategories s ON p.subcategory_id = s.subcategory_id
            WHERE s.category_id = ?
        ");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }

    public function getCategoryNameById($id) {
        $stmt = $this->db->prepare("SELECT name FROM categories WHERE category_id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc()['name'];
    }
}
