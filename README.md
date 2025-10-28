# Projeto_Disney 🏰

## Nome do Projeto
App: Disneyland

---

## Integrantes
- Bruno Queiroz Plata 
- Matheus Henrique Galindo Campos

---

## Sobre o Aplicativo

O **Disneyland** é um aplicativo mobile desenvolvido em **Flutter (Dart)** para **Android**.  
Ele consome uma **API pública da Disney** para exibir informações sobre **personagens, filmes e séries**.  
Os usuários podem pesquisar, filtrar e visualizar detalhes de cada item retornado pela API, com uma interface simples e interativa.

---

## Funcionalidades Principais

- **Pesquisa de Personagens:** Permite buscar personagens do universo Disney pelo nome.  

- **Listagem de Filmes e Séries:** Exibe os títulos disponíveis na API, com imagem, nome e descrição.  

- **Detalhes de Itens:** Mostra informações detalhadas de cada personagem, filme ou série, incluindo ID, imagem, filmes em que aparece e data de criação.  

- **Créditos da API:** Uma seção informando sobre a origem dos dados e documentação utilizada.

---

## API Utilizada

O aplicativo consome dados da **Disney API**, que fornece informações públicas sobre o universo Disney.

### 🌐 URL Base da API

https://api.disneyapi.dev/


---

## Endpoints Utilizados

1. /character

Função: Busca personagens da Disney.

Parâmetros:

page → número da página.

name → nome do personagem (para pesquisa).


Retorno: Lista paginada de personagens com nome, imagem e aparições.


2. /character/{id}

Função: Retorna detalhes completos de um personagem.

Parâmetros:

{id} → ID do personagem.


Retorno: Dados individuais do personagem (nome, imagem, filmes, séries, etc).



---

## Linguagens e Tecnologias

Linguagem: Dart

Framework: Flutter

Plataforma: Android

Formato dos Dados: JSON

API: Disney API (https://api.disneyapi.dev/)


---

## Créditos

API pública disponibilizada por Disney API.

---

## Tópicos da Wiki
- [Análise da API]()
- [Protótipo e Navegação]()
- [Descrição Detalhada da Aplicação]()
