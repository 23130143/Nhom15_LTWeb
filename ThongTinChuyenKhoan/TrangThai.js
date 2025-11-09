// Lấy tất cả nút có class copy
document.querySelectorAll(".copy").forEach((btn, index) => {
    btn.addEventListener("click", () => {

        // Tìm phần tử cần copy (dựa vào vị trí trong layout)
        let valueToCopy = btn.previousElementSibling.innerText.trim();

        // Copy vào clipboard
        navigator.clipboard.writeText(valueToCopy);

        // Thông báo nhanh:
        btn.innerText = "Đã sao chép";
        setTimeout(() => btn.innerText = "Sao chép", 1200);
    });
});
