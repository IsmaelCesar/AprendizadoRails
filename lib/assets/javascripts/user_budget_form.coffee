# Partial users/partials/_user_budget_form

$('#btn-update-budget').click ->
  console.log 'Here BUTTON SAVE!'
  $('#modal-budget-form').modal('hide')

  $('#modal-budget-form').on('hidden.bs.modal', ->
    $.ajax
      method: 'get'
      url: '/get_partial_user_budget'
      success: (data) ->
        $('#user-budget-container').html(data)
      error: (err) ->
        alertify.error 'There has been an error when loading the budget partial'
        console.error err
  )