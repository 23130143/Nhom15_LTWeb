document.addEventListener("DOMContentLoaded", () => {
    const mainImg = document.getElementById('main-img');
    const thumbs = document.querySelectorAll('.thumb-list img');

    thumbs.forEach(thumb => {
        thumb.addEventListener('click', () => {
            mainImg.src = thumb.src;
            thumbs.forEach(t => t.classList.remove('active-thumb'));
            thumb.classList.add('active-thumb');
        });
    });
});
document.addEventListener("DOMContentLoaded", () => {
    const mainImg = document.getElementById('main-img');
    const leftImg = document.getElementById('left-img');
    const rightImg = document.getElementById('right-img');
    const thumbs = document.querySelectorAll('.thumb-list img');
    let index = 0;
    function changeImage(newIndex) {
        mainImg.classList.add("fade-out");
        index = (newIndex + thumbs.length) % thumbs.length;
        mainImg.src = thumbs[index].src;
        mainImg.classList.remove("fade-out");
    }

    rightImg.addEventListener("click", () => changeImage(index + 1));
    leftImg.addEventListener("click", () => changeImage(index - 1));

    thumbs.forEach((thumb, i) => {
        thumb.addEventListener("click", () => changeImage(i));
    });

})
document.addEventListener("DOMContentLoaded", () => {
    const numberC=document.getElementById('number-c');
    const priceChild = document.getElementById('child-price');
    if (numberC.value === 0) {
        priceChild.style.display = 'none';
    }
    numberC.addEventListener('input', function () {
        if (numberC.value > 0) {
            priceChild.style.display = 'inline';
        } else {
            priceChild.style.display = 'none';
        }
    });
})
document.addEventListener("DOMContentLoaded", () => {
    const priceAdult = 9400000;
    const priceChild=8500000;

    const numberA = document.getElementById('number-a');
    const numberC = document.getElementById('number-c');

    const basicPrice = document.getElementById('basic-price');
    // const disPrice = document.getElementById('dis-price');
    const totalPrice = document.getElementById('total-price');

    function formatMoney(price) {
        return price.toLocaleString("vi-VN");
    }
    function updatePrice() {
        const adults = parseInt(numberA.value) || 0;
        const children = parseInt(numberC.value) || 0;
        const total = adults * priceAdult + children * priceChild;
        basicPrice.textContent = formatMoney(total);
        totalPrice.textContent = formatMoney(total);
    }

    numberA.addEventListener("input", updatePrice);
    numberC.addEventListener("input", updatePrice);

    updatePrice();
})