function abrirLojinha(){
  //Executando o app lojinha
  TestedApps.Lojinha.Run();
}

function login(usuario, senha){
  Aliases.Lojinha.frmPrincipal.CorpoLojinha.ClickTab("LOGIN");
  
  //Preenchendo o formulario de login
  let formularioLogin = Aliases.Lojinha.frmPrincipal.CorpoLojinha.TabSheet1
  formularioLogin.edtUsuario.SetText(usuario);
  formularioLogin.edtSenha.SetText(senha);
  formularioLogin.btnEntrar.Click();
  
}
module.exports.abrirLojinha = abrirLojinha;
module.exports.login = login;