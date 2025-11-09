document.addEventListener('DOMContentLoaded', function() {
    // 1. Tìm tất cả các radio button có class 'office-radio'
    const radioButtons = document.querySelectorAll('.office-radio');
    // 2. Tìm nút bấm có class 'btn-confirm'
    const nutGui = document.querySelector('.btn-confirm');

    // Hàm này kiểm tra và thay đổi trạng thái của nút Gửi
    function kiemTraVaDoiMauNut() {
        // Kiểm tra xem CÓ BẤT KỲ radio nào được chọn chưa
        const daChonVanPhong = Array.from(radioButtons).some(radio => radio.checked);

        if (daChonVanPhong) {
            nutGui.classList.add('active');
        } else {
            nutGui.classList.remove('active');
        }
    }

    // Lắng nghe sự kiện: Khi người dùng bấm chọn (change) vào bất kỳ radio nào
    radioButtons.forEach(radio => {
        radio.addEventListener('change', kiemTraVaDoiMauNut);
    });

    // Xử lý nút bấm: Ngăn chặn hành động mặc định và đảm bảo không có alert
    nutGui.addEventListener('click', function(e) {
        // Luôn ngăn chặn hành động gửi form mặc định
        e.preventDefault();

        if (nutGui.classList.contains('active')) {
            console.log("Sẵn sàng gửi địa chỉ.");
        } else {
            console.log("Vui lòng chọn văn phòng trước khi gửi.");
        }
    });

    kiemTraVaDoiMauNut();
});