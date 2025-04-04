<?php
require_once "config/database.php";

class HomeModel {
    private $db;

    public function __construct() {
        $this->db = Database::connect();
    }

    public function getFeaturedProducts() {
        $stmt = $this->db->prepare("SELECT p.*, f.product_image_file 
                                    FROM Featured_Products f 
                                    JOIN Products p ON f.product_id = p.product_id 
                                    ORDER BY f.sort_order ASC");
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
        // Add product image file from Products table if necessary
        foreach ($products as &$product) {
            if (empty($product['product_image_file'])) {
                $product['product_image_file'] = $product['image_file'];  // Use Products image if Featured doesn't have one
            }
        }
    
        return $products;
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

    public function getAllSubcategories() {
        $subcategories = [];
    
        $tables = [
            'Keyboard_Subcategories',
            'Switches_Subcategories',
            'Barebone_Subcategories',
            'Keycaps_Subcategories',
            'Mouse_Subcategories',
            'Accessories_Subcategories'
        ];
    
        // Category images mapping
        $categoryImages = [
            "Keyboard_Subcategories" => "keyboard_sub.jpg",
            "Switches_Subcategories" => "switch_sub.jpg",
            "Barebone_Subcategories" => "diykit_sub.jpg",
            "Keycaps_Subcategories" => "keycaps_sub.jpg",
            "Mouse_Subcategories" => "mouse_sub.jpg",
            "Accessories_Subcategories" => "accessories_sub.jpg"
        ];
    
        foreach ($tables as $table) {
            $stmt = $this->db->prepare("SELECT name FROM $table");
            $stmt->execute();
            $subcategories[$table] = [
                'image' => $categoryImages[$table] ?? 'default.jpg', // Assign image
                'items' => $stmt->fetchAll(PDO::FETCH_ASSOC)
            ];
        }
    
        return $subcategories;
    }
    
}
?>
