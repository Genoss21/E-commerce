<?php

class CategoryController {
    public function show($id) {
        require_once 'app/models/CategoryModel.php';
        $model = new CategoryModel();

        $products = $model->getProductsByCategoryId($id);
        $categoryName = $model->getCategoryNameById($id);

        require_once 'app/views/category.php';
    }
}
