$(document).ready(function () {
    $("#tienmat").click(function () {
        activatePaymentItem("#tienmat");
    });

    $("#chuyenkhoan").click(function () {
        activatePaymentItem("#chuyenkhoan");
    });

    $("#thanhtoanatm").click(function () {
        activatePaymentItem("#thanhtoanatm");
    });

    $("#thetindung").click(function () {
        activatePaymentItem("#thetindung");
    });

    $("#vnpay").click(function () {
        activatePaymentItem("#vnpay");
    });

    $("#momo").click(function () {
        activatePaymentItem("#momo");
    });

    $("#shoppepay").click(function () {
        activatePaymentItem("#shoppepay");
    });

    $("#thanhtoanmsb").click(function () {
        activatePaymentItem("#thanhtoanmsb");
    });

    function activatePaymentItem(paymentItemId) {
        $(".payment-item").removeClass('active');
        $(paymentItemId).closest('.payment-item').addClass('active');
        $(paymentItemId).closest('.payment-item').show();
    }

});
