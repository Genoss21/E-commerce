<?php
    class SubcategoryController {
        public function show($subcategoryId) {
            require_once "../app/models/SubcategoryModel.php";
            $model = new SubcategoryModel();

            $products = $model->getProductsBySubcategory($subcategoryId);

            require_once "../app/views/subcategory/show.php"; // Show the product list
        }
}
?>