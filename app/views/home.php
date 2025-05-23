<!DOCTYPE html>
<html lang="en">

<?php include 'layout/header.php'; ?>

<body class="bg-gray-100">

    <?php include 'layout/navbar.php'; ?>
    

    <!-- Featured Products Carousel -->
    <!-- <pre><?php print_r($data['featuredProducts']); ?></pre> -->
    <div class="relative">
        <!-- <h2 class="text-2xl font-bold mb-3">Featured Products</h2> -->

        <div class="relative w-full overflow-hidden">
            <div class="relative flex transition-transform duration-500 ease-in-out" id="carousel-container">
                <?php foreach ($data['featuredProducts'] as $product): ?>
                    <div class="carousel-item min-w-full flex-shrink-0">
                        <a href="">
                            <img src="<?= '/public' . $product['product_image_file'] ?>" alt="<?= htmlspecialchars($product['name']) ?>" class="md:w-full w-auto md:h-[800px] h-[350px] object-cover">
                        </a>
                        <!-- <h3 class="text-center mt-2 font-semibold"><?= htmlspecialchars($product['name']) ?></h3> -->
                    </div>
                <?php endforeach; ?>
                <!-- Cloned first slide for smooth infinite looping -->
                <div class="carousel-item min-w-full flex-shrink-0">
                    <a href="">
                        <img src="<?= '/public' . $data['featuredProducts'][0]['product_image_file'] ?>" alt="<?= htmlspecialchars($data['featuredProducts'][0]['name']) ?>" class="md:w-full w-auto md:h-[800px] h-[350px] object-cover">
                    </a>
                    <!-- <h3 class="text-center mt-2 font-semibold"><?= htmlspecialchars($data['featuredProducts'][0]['name']) ?></h3> -->
                </div>
            </div> 
            <!-- Progress Bars -->
            <div class="absolute inset-x-0 md:bottom-10 bottom-5 flex space-x-2 mt-3 justify-center">
                <?php foreach ($data['featuredProducts'] as $index => $product): ?>
                    <div class="progress-bar bg-gray-300 w-12 h-1 m-2 rounded-full overflow-hidden cursor-pointer" 
                        data-index="<?= $index ?>">
                        <div class="progress-fill bg-gray-900 h-full w-0"></div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>

    <!-- Categories Gallery -->
    <div class="container mx-auto md:px-0 px-4 mb-10">
        <h2 class="flex text-2xl font-bold my-16 text-center justify-center">Find the Right Keyboard for You</h2>

        <div class="grid grid-cols-2 md:grid-cols-5 md:gap-6 gap-3">

            <!-- Rectangle 1: Keyboard -->
            <div class="col-span-2 md:col-span-3 order-1 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/1" class="relative block group">
                    <img src="public/images/categories/keyboard.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Keyboard">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Keyboard <i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

            <!-- Rectangle 2: Barebone -->
            <div class="col-span-2 md:col-span-3 order-2 md:order-5 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/2" class="relative block group">
                    <img src="public/images/categories/barebone_kit.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Barebone Kit">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Barebone Kit<i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

            <!-- Square 1: Switches -->
            <div class="order-3 md:order-2 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/3" class="relative block group">
                    <img src="public/images/categories/key_switches.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Switches">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Switches<i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

            <!-- Square 2: Accessories -->
            <div class="order-6 md:order-6 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/4" class="relative block group">
                    <img src="public/images/categories/accessories.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Switches">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Accessories<i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

            <!-- Square 3: Mouse -->
            <div class="order-5 md:order-4 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/5" class="relative block group">
                    <img src="public/images/categories/mouse.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Switches">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Mouse<i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

            <!-- Square 4: Keycaps -->
            <div class="order-4 md:order-3 bg-white shadow-lg rounded-lg overflow-hidden">
                <a href="/category/show/6" class="relative block group">
                    <img src="public/images/categories/keycaps.jpg" class="relative w-full md:h-[300px] h-[150px] object-cover transition-transform duration-300 ease-in-out group-hover:scale-105" alt="Switches">
                    <h3 class="absolute inset-x-0 bottom-0 text-white text-center text-xl font-base p-3 bg-black bg-opacity-30 group-hover:bg-opacity-60 transition-all duration-300 ease-in-out">Keycaps<i class="uil uil-angle-right"></i></h3>
                </a>
            </div>

        </div>
    </div>

    <!-- Tab Section -->
    <div class="max-w-screen-2xl md:mx-auto mx-4">
        <h2 class="flex justify-center text-center text-2xl font-bold my-16">Best Selling Products/Top Selling</h2>
        <div class="flex justify-start md:justify-center md:max-w-screen-md w-full mx-auto px-4 pb-8 items-center gap-4 mb-4 overflow-x-auto scrollbar-none scroll-smooth">
            <?php
                $desiredOrder = ["Keyboard", "Barebone Kit", "Key Switches", "Keycaps", "Mouse", "Accessories"];

                usort($data['categories'], function($a, $b) use ($desiredOrder) {
                    $posA = array_search($a['category_name'], $desiredOrder);
                    $posB = array_search($b['category_name'], $desiredOrder);
                    return $posA - $posB;
                });
            ?>

            <?php foreach ($data['categories'] as $index => $category): ?>
                <button class="px-4 py-2 text-black whitespace-nowrap tab-button" onclick="showTab(<?= $index ?>)">
                    <?= $category['category_name'] ?>
                </button>
            <?php endforeach; ?>
        </div>

        
        <div class="">
            <?php foreach ($data['categories'] as $index => $category): ?>
                <div class="tab-content px-0 <?= $index === 0 ? '' : 'hidden' ?>" id="tab-<?= $index ?>">
                    <div class="grid grid-rows-2 grid-cols-2 lg:grid-cols-5 lg:grid-rows-none gap-4">
                        <?php foreach ($data['productsByCategory'][$category['category_id']] as $product): ?>
                            <a href="" class="group flex flex-col bg-white shadow-lg rounded-lg p-3 hover:-translate-y-4 transition-transform duration-300 ease-in-out hover:bg-gray-900 hover:text-white">
                                <img src="public<?= $product['image_file'] ?>" class="w-full h-[220px] object-scale-down rounded group-hover:scale-125 group-hover:-translate-y-4 transition-transform duration-300 ease-in-out">
                                <div class="mt-auto">
                                    <h3 class="text-left my-2 font-semibold"><?= $product['name'] ?></h3>
                                    <p class="text-yellow">
                                        <i class="uis uis-favorite text-yellow-300 group-hover:text-yellow-500"></i>
                                        <i class="uis uis-favorite text-yellow-300 group-hover:text-yellow-500"></i>
                                        <i class="uis uis-favorite text-yellow-300 group-hover:text-yellow-500"></i>
                                        <i class="uis uis-favorite text-yellow-300 group-hover:text-yellow-500"></i>
                                        <i class="uis uis-favorite text-yellow-300 group-hover:text-yellow-500"></i>
                                    </p>
                                    <div class="flex items-center">
                                        <p class="text-center text-gray-700 pr-2 group-hover:text-white">$<?= number_format($product['price'], 2) ?></p>
                                        <p class="text-base font-medium text-gray-500 line-through dark:text-gray-300 group-hover:text-gray-400">$25.00</p>
                                        <p class="ml-auto text-base font-medium text-green-500 group-hover:text-green-300">20% off</p>
                                    </div>
                                </div>
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    

    <div class="h-screen">1</div>

    <?php include 'layout/footer.php'; ?>
</body>
</html>
