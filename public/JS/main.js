//For the carousel 
document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.getElementById("carousel-container");
    const items = document.querySelectorAll(".carousel-item");
    const progressBars = document.querySelectorAll(".progress-bar .progress-fill");
    const totalSlides = items.length;
    let index = 0;
    const intervalTime = 4000; // 3 seconds transition time
    let interval;

    // Function to update the carousel position
    function updateCarousel(instant = false) {
        // Disable transition for instant jumps
        carousel.style.transition = instant ? "none" : "transform 0.5s ease-in-out";
        carousel.style.transform = `translateX(-${index * 100}%)`;

        // Reset all progress bars
        progressBars.forEach((bar) => {
            bar.style.transition = "none";
            bar.style.width = "0%";
        });

        // Animate the progress bar for the active slide
        setTimeout(() => {
            progressBars[index % totalSlides].style.transition = `width ${intervalTime}ms linear`;
            progressBars[index % totalSlides].style.width = "100%";
        }, 60);
    }

    // Function to go to the next slide
    function nextSlide() {
        index++;

        // If we reach the last slide, we reset to the first one without flickering
        if (index >= totalSlides) {
            index = 0;
            updateCarousel(true); // No transition for wrap-around
            setTimeout(() => {
                // Allow smooth transition after wrapping around
                updateCarousel();
            }, 60);
        } else {
            updateCarousel();
        }
    }

    // Function to jump to a specific slide when clicking the progress bar
    function goToSlide(slideIndex) {
        index = slideIndex;
        updateCarousel();
        resetAutoSlide();
    }

    // Function to reset and restart the auto slide
    function resetAutoSlide() {
        clearInterval(interval);
        startAutoSlide();
    }

    // Start the automatic sliding
    function startAutoSlide() {
        interval = setInterval(nextSlide, intervalTime);
    }

    // Initialize the auto-slide
    startAutoSlide();

    // Add event listener for clicking progress bars
    document.querySelectorAll(".progress-bar").forEach((bar, i) => {
        bar.addEventListener("click", function () {
            goToSlide(i);
        });
    });
});

//For tabs that shows 5 items per category 
function showTab(index) {
    document.querySelectorAll('.tab-content').forEach((tab, i) => {
        tab.classList.toggle('hidden', i !== index);
    });
}


//for the search button
document.getElementById('searchButton').addEventListener('click', function() {
    let searchForm = document.getElementById('searchForm');
    let searchWrapper = document.getElementById('searchWrapper');
    let otherContent = document.getElementById('otherContent');

    if (searchForm.classList.contains('w-0')) {
        searchForm.classList.remove('w-0', 'overflow-hidden');
        searchForm.classList.add('w-64');
        otherContent.classList.add('translate-x-64');
    } else {
        searchForm.classList.add('w-0', 'overflow-hidden');
        searchForm.classList.remove('w-64');
        otherContent.classList.remove('translate-x-64');
    }
});