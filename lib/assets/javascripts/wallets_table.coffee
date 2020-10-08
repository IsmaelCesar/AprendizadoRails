# View wallets/_wallets_table

document.querySelectorAll('.table-cell-btn-delete button').forEach( (btn, index) ->
  $(btn).on 'click' , ->
    asyncDeleteWallet(this.value)
)

asyncDeleteWallet = (wallet_id) ->
  $.ajax
    method: 'delete'
    url: '/wallets/'+ wallet_id
    data: $('#form-delete-wallet-'+wallet_id).serialize(),
    success: (data) ->
      alertify.success('Wallet successfuly deleted');
      asyncUpdateWalletsTable()
    error: (err) ->
      alertify.error('There has been a problem with the wallets deletion')
      console.error(err)