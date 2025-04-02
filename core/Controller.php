<?php
class Controller {
    public function view($view, $data = []) {
        $viewPath = "app/views/$view.php";
        if (file_exists($viewPath)) {
            require_once $viewPath;
        } else {
            die("View '$view.php' not found in app/views/");
        }
    }
}
?>
