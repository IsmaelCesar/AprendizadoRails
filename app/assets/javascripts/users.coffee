# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# View users/show
$(document).ready ->
  asyncUpdateWalletsTable()

  # Create New Wallet
  $('#btn-create-new-wallet').click ->
    $.ajax
      method: 'get',
      url: '/wallets/new',
      success: (data) ->
        $('#my-modal-container').html(data)
        $('#new-wallet-modal').modal("show")

# Partial users/partials/_user_budget_form
# Getting the form user budget form when clicking the budget
  $('#user-budget-value').click ->
    $.ajax
      method: 'get'
      url: '/user_budget_form'
      success: (data) ->
        $('#budget-form-container').html(data)
        $('#modal-budget-form').modal('show')
      error: (err) ->
        alertify.error 'there has been an error while loading the budget Form'
        console.error err