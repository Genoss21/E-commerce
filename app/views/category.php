<?php require_once 'layout/header.php'; ?>
<body>
<?php require_once 'layout/navbar.php'; ?>

<h1 class="text-2xl font-bold mb-6">Products in <?= htmlspecialchars($categoryName) ?></h1>

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
    <p>No products found in this category.</p>
<?php endif; ?>

<?php require_once 'layout/footer.php'; ?>
</body>
</html>
