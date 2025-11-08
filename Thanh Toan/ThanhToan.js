// Lấy tất cả các tùy chọn thanh toán
const paymentOptions = document.querySelectorAll('.payment-option');

paymentOptions.forEach(option => {
    option.addEventListener('click', () => {
        // Xóa class active khỏi tất cả các ô
        paymentOptions.forEach(o => o.classList.remove('active'));

        // Thêm class active vào ô được click
        option.classList.add('active');

        // Đánh dấu radio tương ứng là đã chọn
        const radio = option.querySelector('input[type="radio"]');
        if (radio) radio.checked = true;
    });
});

