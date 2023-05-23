function submeterNovoProdutoComErro(nome, valor, cores){
  let formularioAdicaoProduto = Aliases.Lojinha.frmPrincipal.CorpoLojinha.FormularioAdicaoProduto.PainelDireita;
  
  formularioAdicaoProduto.edtNovoNomeProduto.SetText(nome);
  formularioAdicaoProduto.edtNovoValorProduto.SetText(valor);
  formularioAdicaoProduto.edtNovoCoresProduto.SetText(cores);
  
  formularioAdicaoProduto.btnSalvarProduto.Click();
}
module.exports.submeterNovoProdutoComErro = submeterNovoProdutoComErro;