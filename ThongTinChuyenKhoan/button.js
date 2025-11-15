document.addEventListener('DOMContentLoaded', function() {

    const radioButtons = document.querySelectorAll('.office-radio');
    const nutGui = document.querySelector('.btn-confirm');

    function kiemTraVaDoiMauNut() {
        const daChonVanPhong = [...radioButtons].some(radio => radio.checked);
        nutGui.classList.toggle('active', daChonVanPhong);
    }

    radioButtons.forEach(radio => {
        radio.addEventListener('change', kiemTraVaDoiMauNut);
    });

    nutGui.addEventListener('click', function (e) {
        e.preventDefault();

        const radioDaChon = [...radioButtons].find(radio => radio.checked);

        if (!radioDaChon) {
            alert("Vui lòng chọn văn phòng trước khi gửi.");
            return;
        }

        // Lấy URL từ data-url
        const urlChuyenTrang = radioDaChon.dataset.url;

        // Chuyển trang tương ứng
        window.location.href = urlChuyenTrang;
    });

    kiemTraVaDoiMauNut();
});
