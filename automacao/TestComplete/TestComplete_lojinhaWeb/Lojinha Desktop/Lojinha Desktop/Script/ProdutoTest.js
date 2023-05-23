﻿var LoginTela = require("LoginTela");
var ListaProdutosTela = require("ListaProdutosTela");
var NovoProdutoTela = require("NovoProdutoTela");
var MensagemTela = require("MensagemTela");
var FormularioPrincipalTela = require("FormularioPrincipalTela");

function validarValoresInvalidosDoProduto()
{
  LoginTela.abrirLojinha();
  LoginTela.login("admin", "admin");
  ListaProdutosTela.abrirNovoProduto();
  NovoProdutoTela.submeterNovoProdutoComErro("iphone", "000", "preto,branco");
  MensagemTela.validarMensagemDeErro("O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00.");
  MensagemTela.fecharMensagemDeErro();
  FormularioPrincipalTela.fecharLojinha();
   
}

function validarValorSeteMilEUmCentavo()
{
  LoginTela.abrirLojinha();
  LoginTela.login("admin", "admin");
  ListaProdutosTela.abrirNovoProduto();
  NovoProdutoTela.submeterNovoProdutoComErro("iphone", "700001", "preto,branco");
  MensagemTela.validarMensagemDeErro("O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00.");
  MensagemTela.fecharMensagemDeErro();
  FormularioPrincipalTela.fecharLojinha();
   
}