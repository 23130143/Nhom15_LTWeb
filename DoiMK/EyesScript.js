document.addEventListener("DOMContentLoaded", function() {
    const eyes = document.querySelectorAll(".toggle-eye");
    eyes.forEach(eye => {
        eye.addEventListener("click", function() {
            const input = eye.previousElementSibling;
            if (input.type === "password") {
                input.type = "text";
                eye.classList.remove("fa-eye-slash");
                eye.classList.add("fa-eye");
            } else{
                input.type = "password";
                eye.classList.remove("fa-eye");
                eye.classList.add("fa-eye-slash");
            }
        })
    })
})