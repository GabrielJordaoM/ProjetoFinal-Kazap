# Projeto Final Kazap Academy 2023 - Banco

Primeiramente, antes de começar a falar sobre os comandos que estão no código, vamos instalar as gems que o acompanham:

## Instalação:

Vá até a pasta onde o projeto está e execute:

```bash
bundle install
```

## Executar migrations:

```bash
sequel -m db/migrations sqlite:://db/bank.db
```

## O que fazer após:

Execute o comando a seguir para iniciar o programa:

```bash
ruby app.rb
```

## antes de começar:

Antes de utilizar os comandos, precisamos criar sua conta (e de outras pessoas para que possamos testar as próximas opções):
Use a opção: "5. Create Client"

E também utilize a opção: 7. Create Account
Para criar a conta bancária para você (e outras pessoas que queiram utilizar).

## Deposito:
Opção 1 é a do depósito: coloque o número da CONTA que você criou e insira o valor de dinheiro que deseja depositar.

## Saque:
Opção 2 é a do saque, novamente coloque o número da conta que você criou e o valor de dinheiro que deseja sacar (com o limite de -100 reais, entrando no cheque especial).

## Trasferencia:
Opção 3 é a transferência, insira o número da sua conta (ou a conta de onde sairá o dinheiro) e logo após insira o número da conta que receberá o dinheiro, e por último a quantia.

## Extrato:
Nesta opção, coloque o número da conta que deseja ver o extrato e terá o extrato na tela. Se quiser, pode baixar em formato JSON ou CSV.

## Criar e editar cliente:
As opções 5 e 6 do menu são parecidas. Na 5, criaremos o cliente, para isso, precisaremos de algumas informações como nome, celular e endereço. Na 6, editaremos os dados do cliente, passando por todos os atributos.

## Criar, editar e deletar a Conta:
Opção 7 criaremos a conta (apenas precisamos de quem será a conta e de um número de sua preferência para criar) para poder depositar/sacar ou transferir. Na 8, podemos editar o número da conta e, por último, na 9, após colocar o número da conta, a deletaremos.

## Sair
Opção 10 é a última e permite que você encerre suas operações no banco.
