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

// ===== BỔ SUNG:  CHỨC NĂNG LỌC TOUR THEO DANH MỤC =====

// Lấy tất cả các side-item
const sideItems = document.querySelectorAll('.side-item');

// Lặp qua từng side-item và gắn sự kiện click
sideItems.forEach(item => {
    item.addEventListener('click', function () {
        // Lấy keyword từ text của item được click
        const keyword = this.textContent.trim().toLowerCase();

        // Gọi hàm lọc tour
        filterTours(keyword);

        // Xóa class active khỏi tất cả side-item
        sideItems.forEach(i => i.classList. remove('active'));

        // Thêm class active cho item được click
        this. classList.add('active');
    });
});

// Hàm lọc tour theo keyword
function filterTours(keyword) {
    const allCards = document.querySelectorAll('.main-card');
    let hasResult = false;

    allCards.forEach(card => {
        // Lấy toàn bộ nội dung text của card
        const cardText = card.textContent.toLowerCase();

        // Kiểm tra xem keyword có trong nội dung card không
        if (cardText.includes(keyword)) {
            card.style.display = 'block';
            hasResult = true;
        } else {
            card.style.display = 'none';
        }
    });

    // Cập nhật tiêu đề
    updateTitle(keyword);

    // Hiển thị thông báo nếu không có kết quả
    showNoResultMessage(! hasResult, keyword);
}

// Hàm cập nhật tiêu đề
function updateTitle(keyword) {
    const title = document.querySelector('#title h1');
    if (title) {
        // Viết hoa chữ cái đầu của keyword
        const formattedKeyword = keyword.charAt(0).toUpperCase() + keyword.slice(1);
        title.textContent = `Kết quả tìm kiếm:  "${formattedKeyword}"`;
    }
}

// Hàm hiển thị thông báo khi không có kết quả
function showNoResultMessage(show, keyword) {
    let noResultDiv = document.querySelector('.no-result-message');

    if (show) {
        // Tạo div thông báo nếu chưa có
        if (!noResultDiv) {
            noResultDiv = document. createElement('div');
            noResultDiv. className = 'no-result-message';
            document.querySelector('.main-content').appendChild(noResultDiv);
        }

        // Viết hoa chữ cái đầu
        const formattedKeyword = keyword. charAt(0).toUpperCase() + keyword.slice(1);

        noResultDiv. innerHTML = `
            <div class="no-result-box">
                <i class="fa-solid fa-magnifying-glass"></i>
                <p>Không tìm thấy tour nào cho "<strong>${formattedKeyword}</strong>"</p>
                <button class="btn-reset" onclick="resetFilter()">Xem tất cả tour</button>
            </div>
        `;
        noResultDiv.style. display = 'block';
    } else if (noResultDiv) {
        noResultDiv.style.display = 'none';
    }
}

// Hàm reset bộ lọc - hiển thị lại tất cả tour
function resetFilter() {
    // Hiển thị lại tất cả các card
    const allCards = document.querySelectorAll('.main-card');
    allCards.forEach(card => {
        card.style.display = 'block';
    });

    // Reset tiêu đề về ban đầu
    const title = document. querySelector('#title h1');
    if (title) {
        title.textContent = 'Tour ưu đãi hot nhất hôm nay';
    }

    // Ẩn thông báo không có kết quả
    const noResultDiv = document.querySelector('.no-result-message');
    if (noResultDiv) {
        noResultDiv.style.display = 'none';
    }

    // Xóa class active khỏi tất cả side-item
    sideItems.forEach(item => item.classList.remove('active'));
}