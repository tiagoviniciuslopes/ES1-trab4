var botui = new BotUI('help-bot');

botui.message.add({
  delay: 500,
  loading: true,
  content: 'Olá bem-vindo'
}).then(function () {
  return botui.message.add({
    delay: 500,
    loading: true,
    content: 'Como posso ajudar?'
  });
})
botui.action.text({
  action: {
    delay:500,
    placeholder: 'Pesquisar'
  }
}).then(function (res) { // will be called when it is submitted.
  console.log(res.value); // will print whatever was typed in the field.
  $.ajax({
    method:'POST',
    url:'BotUi.java',
    data: {res}
  })
  .done(function(msg){
        $("#resultado").html(msg);
  })
});