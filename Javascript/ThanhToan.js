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

// Xử lý thanh toán
document.querySelector('.confirm-btn').addEventListener('click', function () {
    const qr = document.getElementById('qr');
    const direct = document.getElementById('direct');

    if (qr.checked) {
        window.location.href = "http://localhost:63342/Nhom15_LTWeb/ThanhToanMaQR.html?_ijt=2n7si2oksaek42r1ohsviao485&_ij_reload=RELOAD_ON_SAVE"; // chuyển sang trang thanh toán QR
    } else if (direct.checked) {
        window.location.href = "http://localhost:63342/Nhom15_LTWeb/ThanhToanTaiVP.html?_ijt=2n7si2oksaek42r1ohsviao485&_ij_reload=RELOAD_ON_SAVE"; // chuyển sang trang thanh toán tại văn phòng
    } else {
        alert("Vui lòng chọn hình thức thanh toán trước khi xác nhận!");
    }
});