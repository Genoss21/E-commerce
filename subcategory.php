<?php
require_once "config/database.php";

// Check if subcategory_id is passed
if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo "Subcategory not specified.";
    exit;
}

$subcategoryId = intval($_GET['id']);
$db = Database::connect();

// Get subcategory name (optional)
$stmt = $db->prepare("SELECT name FROM subcategories WHERE subcategory_id = ?");
$stmt->execute([$subcategoryId]);
$subcat = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$subcat) {
    echo "Subcategory not found.";
    exit;
}

$subcategoryName = $subcat['name'];

// Fetch products under this subcategory
$stmt = $db->prepare("SELECT * FROM products WHERE subcategory_id = ?");
$stmt->execute([$subcategoryId]);
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<?php require_once 'app/views/layout/header.php'; ?>

<body class="bg-gray-50 text-gray-900">

    <?php require_once 'app/views/layout/navbar.php'; ?>

        <h1 class="text-2xl font-bold mb-6">Products in <?= htmlspecialchars($subcategoryName) ?></h1>

        <?php if (count($products) > 0): ?>
            <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
                <?php foreach ($products as $product): ?>
                    <div class="bg-white p-4 rounded-lg shadow hover:shadow-md transition">
                        <img src="../public/<?= $product['image_file'] ?>" alt="<?= $product['name'] ?>" class="h-40 object-contain mx-auto mb-2">
                        <h2 class="text-sm font-medium"><?= $product['name'] ?></h2>
                        <p class="text-gray-600 text-sm mt-1">$<?= number_format($product['price'], 2) ?></p>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <p>No products found under this subcategory.</p>
        <?php endif; ?>
    </div>

    <div class="h-screen">1</div>

    <?php require_once 'app/views/layout/footer.php'; ?>
</body>
</html>
