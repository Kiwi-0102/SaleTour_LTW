
function togglePasswordChange() {
    const navlinkuser = document.querySelector(".nav-link.user");
    const navlinkpassword = document.querySelector(".nav-link.change-password");
    const cardBody = document.getElementById("card-body");
    const customCardBody = document.getElementById("custom-card-body");
    const buttonuser = document.getElementById("buttonuser");
    const buttonforgotpassword = document.getElementById("buttonforgotpassword");

    navlinkpassword.classList.add("active");
    navlinkuser.classList.remove("active");
    cardBody.classList.add("hidden");
    customCardBody.classList.remove("hidden");
    buttonuser.classList.add("hidden");
    buttonforgotpassword.classList.remove("hidden");
}

function toggleUser() {
    const navlinkuser = document.querySelector(".nav-link.user");
    const navlinkpassword = document.querySelector(".nav-link.change-password");
    const cardBody = document.getElementById("card-body");
    const customCardBody = document.getElementById("custom-card-body");
    const buttonuser = document.getElementById("buttonuser");
    const buttonforgotpassword = document.getElementById("buttonforgotpassword");

    navlinkpassword.classList.remove("active");
    navlinkuser.classList.add("active");
    cardBody.classList.remove("hidden");
    customCardBody.classList.add("hidden");
    buttonuser.classList.remove("hidden");
    buttonforgotpassword.classList.add("hidden");

}

var btn = document.getElementById("changebtn");

var passInput = document.getElementById('newpass1');
var confirm = document.getElementById('newpass2');

passInput.addEventListener("input", function () {
    const pass = passInput.value;
    if (pass.length >= 6) {
        confirm.addEventListener("input", function () {
            const conf = confirm.value;
            if (conf === pass) {
                btn.classList.remove("btn-light");
                btn.classList.add("btn-success");

            }
        })
    }
})



