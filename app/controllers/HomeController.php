<?php

require_once "app/models/HomeModel.php";
class HomeController extends Controller {
    private $homeModel;

    public function __construct() {
        $this->homeModel = new HomeModel();
    }

    public function index() {
        $featuredProducts = $this->homeModel->getFeaturedProducts();
        $categories = $this->homeModel->getCategories();

        $productsByCategory = [];
        foreach ($categories as $category) {
            $productsByCategory[$category['category_id']] = $this->homeModel->getProductsByCategory($category['category_id']);
        }

        $this->view("home", [
            'featuredProducts' => $featuredProducts,
            'categories' => $categories,
            'productsByCategory' => $productsByCategory
        ]);
    }
}
?>