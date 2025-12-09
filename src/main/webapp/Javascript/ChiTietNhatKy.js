// Hình ảnh phóng to
document.addEventListener("DOMContentLoaded", () => {
    const images = document.querySelectorAll(".main-image img");

    images.forEach(img => {
        img.addEventListener("click", () => {
            const overlay = document.createElement("div");
            overlay.classList.add("image-overlay");
            overlay.innerHTML = `<img src="${img.src}" alt="">`;
            document.body.appendChild(overlay);

            // Thêm class "active" sau 1 chút để animation hoạt động mượt
            setTimeout(() => overlay.classList.add("active"), 10);

            // Nhấn bất kỳ đâu để đóng
            overlay.addEventListener("click", () => overlay.remove());
        });
    });
});
