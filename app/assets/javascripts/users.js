// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(()=>{
  asyncUpdateWalletsTable();

  // Create New Wallet
  $('#btn-create-new-wallet').click(()=>{
    $.ajax({
      method: 'get',
      url: '/wallets/new',
      success: (data) => {
        $('#my-modal-container').html(data);
        $('#new-wallet-modal').modal("show");
      }
    });
  });
});
