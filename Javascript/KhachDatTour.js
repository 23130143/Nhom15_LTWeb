document.addEventListener("DOMContentLoaded", function() {
    const inputs = document.querySelectorAll('input[required], textarea[required]');
    const payBtn = document.getElementById("payBtn");

    function checkForm() {
        let valid = true;

        inputs.forEach(input => {
            if (!input.value.trim()) valid = false;
        });

        payBtn.disabled = !valid;

        if (valid) {
            payBtn.onclick = function () {
                window.location.href =
                    'http://localhost:63342/Nhom15_LTWeb/ThanhToan.html?_ijt=58bk6r98cffqqk2eruip4dd7du&_ij_reload=RELOAD_ON_SAVE';
            };
        }
    }

    inputs.forEach(input => {
        input.addEventListener('input', checkForm);
    });
});
