# Projeto Final Kazap Academy 2023 - Banco

Primeiramente antes de começar a falar dos comandos que estão no codigo, vamos instalar as gems que acompanham ele:

## Instalação:

vá até a pasta onde o projeto está em execute:

```bash
bundle install
```

## Executar migrations:

```bash
sequel -m db/migrations sqlite:://db/bank.db
```

## O que fazer após:

Execute o comando a seguir para iniciar o programa

```bash
ruby app.rb
```

## antes de começar:

Antes de começar a utilizar os comandos precisamos criar a sua conta (e de outras pessoas para que se possa testar as proximas opçoes):
use a opção: "5. Create Client"

E tambem ultilizar a opção de:7. Create Account
Para cria a conta bancaria para você(e outras peços que queiram ultilizar)

## Deposito:
Opçãõ 1 é a do deposito: coloque o numero da CONTA que você criou e insira o quando de dinheiro que você quer depositar

## Saque:
Opçãõ 2 é a do saque, novamente coloque o numero da conta que você criou e o quanto de dinheiro quer sacar(com o limite de -100 reais entrando no cheque especial)

## Trasferencia:
Opção 3 é a trasferencia, insira o numero da sua conta (ou a conta que vai sair o dinheiro) o logo após insira o numero da conta que vai receber o dinheiro, e por ultimo a quantia

## Extrato:
nesta opção coloque o numero da conta que desxzeja ver o extrato e tera o extrato na tela, se quiser pode baixar tanto em formato JSON e CSV]

## Criar e editar cliente:
As opçoes 5 e 6 do menu são parecidas na 5 criaremos o cliente e na 6 editaremos ele.

## Criar, editar e deletar o Cliente:
opçãõ 7 criaremos a conta para poder depositar/sacar ou trasferir 8 podemos editar o numero da conta e por ultimo a 9 após colocar o numero da conta a deletaremos

## Sair
Opção 10 é´ultima e é a que você pode terminar as suas operaçoes no banco.