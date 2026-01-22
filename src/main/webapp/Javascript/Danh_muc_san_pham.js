// Lấy tất cả các menu
const sideMenus = document.querySelectorAll('.side-menu');

// Lặp qua từng menu
sideMenus.forEach(menu => {
    const sideTitle = menu.querySelector('.side-title');
    const sideBody = menu.querySelector('.side-body');

    // Gắn sự kiện click cho từng menu riêng
    sideTitle.addEventListener('click', () => {
        sideTitle.classList.toggle('active');
        sideBody.classList. toggle('show');
    });
});
