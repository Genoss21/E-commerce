let index = 0;
function slideCarousel() {
    const carousel = document.getElementById("carousel");
    index = (index + 1) % carousel.children.length;
    carousel.style.transform = `translateX(-${index * 100}%)`;
}
setInterval(slideCarousel, 3000);

function showTab(index) {
    document.querySelectorAll('.tab-content').forEach((tab, i) => {
        tab.classList.toggle('hidden', i !== index);
    });
}