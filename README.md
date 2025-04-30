![Solidity](https://img.shields.io/badge/Solidity-363636?style=flat&logo=solidity&logoColor=white)
![Foundry](https://img.shields.io/badge/Foundry-FE7A16?style=flat&logo=rust&logoColor=white)
![Forge](https://img.shields.io/badge/Forge-000000?style=flat&logo=forge&logoColor=white)
![Anvil](https://img.shields.io/badge/Anvil-FF6F61?style=flat&logo=ethereum&logoColor=white)
![Cursor](https://img.shields.io/badge/Cursor%20IDE-3C3C3C?style=flat&logo=visualstudiocode&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)
![ZkVerify](https://img.shields.io/badge/ZkVerify-004AAD?style=flat&logo=zero&logoColor=white)


# Playground

Este repositório foi desenvolvido como parte do Bootcamp **O Grande Código** da NearX, com o objetivo de explorar e consolidar conhecimentos em desenvolvimento de contratos inteligentes utilizando o ecossistema Foundry.

## 🧰 Tecnologias Utilizadas

  - **[Foundry](https://github.com/foundry-rs/foundry)**: Toolkit rápido, portátil e modular para desenvolvimento de aplicações Ethereum. Inclui:
  - **Forge**: Ferramenta para compilar, testar, fazer fuzzing, depurar e implantar contratos Solidity.
  - **Cast**: Canivete suíço para interagir com contratos inteligentes EVM, enviar transações e obter dados da blockchain.
  - **Anvil**: Nó Ethereum local para desenvolvimento, similar ao Ganache ou Hardhat Network.
  - **Chisel**: REPL para Solidity, rápido e utilitário.
  - **Solidity**: Linguagem de programação para contratos inteligentes na Ethereum.
  - **Cursor IDE**: Ambiente de desenvolvimento com IA integrada, que facilita o aprendizado e a correção de erros.

## 📚 Estrutura do Projeto

O projeto segue a estrutura padrão de um projeto Foundry:

- `src/`: Contém os contratos Solidity.
- `test/`: Contém os testes para os contratos.
- `script/`: Scripts para implantação e interações com os contratos.
- `lib/`: Dependências externas.
- `foundry.toml`: Arquivo de configuração do Foundry.

## 📗 Comandos Básicos

### Compilar Contratos

```bash
forge build
```

### Executar Testes

```bash
forge test
```

### Formatar Código

'''bash
forge fmt
'''

### Iniciar Nó Local (Anvil)

'''bash
anvil
'''

### Implantar Contrato

'''bash
forge script script/Counter.s.sol:CounterScript --rpc-url <seu_rpc_url> --private-key <sua_chave_privada>
'''

### Interagir Com Contratos

'''bash
cast <subcomando>
'''

## 🔨 Importância do Foundry

O Foundry oferece uma abordagem moderna e eficiente para o desenvolvimento de contratos inteligentes, com destaque para:

- Desempenho Superior: Compilação e testes mais rápidos em comparação com outras ferramentas como Hardhat.
- Testes Avançados: Suporte a fuzzing e testes de invariantes diretamente em Solidity.
- Integração Facilitada: Ferramentas como Anvil e Cast simplificam o desenvolvimento e a interação com contratos.

Essas características tornam o Foundry uma escolha ideal para projetos profissionais, especialmente aqueles que visam integrar soluções como o ZkVerify, onde desempenho e confiabilidade são cruciais.

## 🪙 Implementação do Padrão ERC-20

A implementação do token ERC-20 foi realizada utilizando a linguagem Solidity, seguindo as diretrizes estabelecidas pelo padrão. O contrato inclui as funções obrigatórias, como totalSupply, balanceOf, transfer, approve, transferFrom e allowance, garantindo a conformidade com o padrão e a interoperabilidade com outras aplicações e serviços na rede Ethereum.​

Além disso, foram adicionadas funções auxiliares para facilitar operações como mint e burn, permitindo a criação e destruição de tokens conforme necessário. Essa abordagem proporciona flexibilidade na gestão do fornecimento total de tokens e é útil para simulações e testes em ambientes de desenvolvimento.

## 🎯 Objetivo

Este projeto serve como um ambiente de testes e aprendizado para o desenvolvimento de contratos inteligentes utilizando o Foundry. A combinação do Foundry com o Cursor IDE proporciona uma experiência de desenvolvimento aprimorada, facilitando a identificação e correção de erros, além de acelerar o processo de aprendizado.
