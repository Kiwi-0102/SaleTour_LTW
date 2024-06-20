
    window.fbAsyncInit = function() {
    FB.init({
        appId: '465732366055988',  // Thay YOUR_APP_ID bằng App ID thực tế của bạn
        cookie: true,
        xfbml: true,
        version: 'v10.0'
    });

    FB.AppEvents.logPageView();
};

    (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

    function checkLoginFB() {
    FB.getLoginStatus(function (response) {
        statusChangeCallback(response);
    });
}

    function statusChangeCallback(response) {
    if (response.status === 'connected') {
    console.log('Logged in.');
    console.log(response.authResponse.accessToken);
    sendTokenToServer(response.authResponse.accessToken);
} else {
    FB.login(function(response) {
    if (response.authResponse) {
    console.log('Logged in.');
    console.log(response.authResponse.accessToken);
    sendTokenToServer(response.authResponse.accessToken);
} else {
    console.log('User cancelled login or did not fully authorize.');
}
});
}
}

    function sendTokenToServer(token) {
    fetch('http://localhost:8080/loginFB', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({accessToken: token}),
    })
        .then(response => response.json())
        .then(data => {
            console.log('Success:', data);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
}
