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

        // Fallback to product image if featured image is missing
        foreach ($products as &$product) {
            if (empty($product['product_image_file'])) {
                $product['product_image_file'] = $product['image_file'];
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
        $stmt = $this->db->prepare("SELECT sc.*, c.category_name AS category_name 
                                    FROM subcategories sc 
                                    JOIN categories c ON sc.category_id = c.category_id 
                                    ORDER BY sc.category_id, sc.name");
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
        // Group subcategories by category
        $grouped = [];
    
        // Map for preview images
        $previewImages = [
            "Keyboard" => "keyboard_sub.jpg",
            "Key Switches" => "switch_sub.jpg",
            "BareBone Kit" => "diykit_sub.jpg",
            "Keycaps" => "keycaps_sub.jpg",
            "Mouse" => "mouse_sub.jpg",
            "Accessories" => "accessories_sub.jpg"
        ];
    
        foreach ($rows as $row) {
            $categoryName = $row['category_name'];
            if (!isset($grouped[$categoryName])) {
                $grouped[$categoryName] = [
                    'image' => $previewImages[$categoryName] ?? 'default.jpg',
                    'items' => []
                ];
            }
    
            // Include subcategory_id for linking
            $grouped[$categoryName]['items'][] = [
                'id' => $row['subcategory_id'],
                'name' => $row['name'],
                'image_file' => $row['image_file']
            ];
        }
    
        return $grouped;
    }
    
}
?>
