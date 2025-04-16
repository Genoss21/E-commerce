<?php

require_once "app/models/HomeModel.php";

class HomeController extends Controller {
    private $homeModel;

    public function __construct() {
        $this->homeModel = new HomeModel();
    }

    public function index() {
        // Get all featured products
        $featuredProducts = $this->homeModel->getFeaturedProducts();

        // Get all categories
        $categories = $this->homeModel->getCategories();

        // Get all subcategories
        $subcategories = $this->homeModel->getAllSubCategories();

        // Get products by each category
        $productsByCategory = [];
        foreach ($categories as $category) {
            $productsByCategory[$category['category_id']] = $this->homeModel->getProductsByCategory($category['category_id']);
        }

        // Pass data to the view
        $this->view("home", [
            'featuredProducts' => $featuredProducts,
            'categories' => $categories,
            'subcategories' => $subcategories,
            'productsByCategory' => $productsByCategory
        ]);
    }
}
?>
