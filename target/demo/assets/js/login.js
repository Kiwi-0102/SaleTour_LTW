


    const validateEmail = (email) => {
    return email.match(
    /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    );
};
    const validate = () => {
    const $result = $('#result');
    const email = $('#email').val();
    var passInput = document.getElementById('pass');
    $result.text('');

    if(validateEmail(email)){
    $result.text(email + ' hợp lệ.');
    $result.css('color', 'green');
        passInput.addEventListener("input", function (){
            const pass = passInput.value;
            if(pass.length >= 6){
                btn.disabled = false;
                btn.style.backgroundColor = "#00d8d5";
                btn.style.cursor ="pointer";
            }else{
                btn.disabled = true;
                btn.style.backgroundColor = "#bbbbbb";
                btn.style.cursor ="not-allowed";
            }
        })
    } else {
        $result.text(email + ' không hợp lệ.');
        $result.css('color', 'red');
    }
        return false;
}
    $('#email').on('input', validate);



