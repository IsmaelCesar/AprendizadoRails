# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# VIEW wallets/new
$('#btn-cancel-new-wallet').attr('data-dismiss', 'modal')
$('#btn-save-new-wallet').click ->
  $('#new-wallet-modal').modal('hide')

$('#new-wallet-modal').on('hidden.bs.modal', ->
  asyncUpdateWalletsTable()
)
