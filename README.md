# Projeto_Disney 🏰

## Nome do Projeto
App: **Disneyland**

---

## Integrantes
- **Bruno Queiroz Plata**  
- **Matheus Henrique Galindo Campos**

---

## Sobre o Aplicativo

O **Disneyland** é um aplicativo mobile desenvolvido em **Flutter (Dart)** para Android.  
Ele consome uma **API pública da Disney**, exibindo informações sobre personagens, filmes e séries.  
O usuário pode navegar entre os conteúdos, visualizar detalhes, favoritar itens e explorar filmes por gênero, tudo através de uma interface simples e intuitiva.

---

## Funcionalidades Principais

- **Tela Inicial (Home):** Mostra os principais filmes e séries disponíveis na API.  
- **Favoritos:** Permite favoritar personagens ou filmes e visualizá-los depois em uma aba dedicada.  
- **Exploração por Gênero:** Exibe listas de filmes separados por gêneros, como ação, terror, fantasia, etc.  
- **Detalhes:** Mostra informações completas de um item selecionado (nome, imagem, descrição e outras aparições).  
- **Créditos da API:** Seção que informa sobre a API utilizada e a origem dos dados.

---

## API Utilizada

O aplicativo consome dados da **Disney API**, uma API pública que fornece informações sobre personagens, filmes e séries do universo Disney.

### 🌐 URL Base da API

https://api.disneyapi.dev/

---

## Documentação Oficial

📘 [https://disneyapi.dev/docs/](https://disneyapi.dev/docs/)

---

Endpoints Utilizados

1. /character

Função: Lista os personagens disponíveis na Disney API.

Parâmetros:

page → número da página (paginação).


Retorno: Retorna uma lista de personagens com nome, imagem e aparições.


2. /character/{id}

Função: Retorna detalhes completos de um personagem.

Parâmetros:

{id} → ID do personagem.


Retorno: Retorna dados detalhados do personagem, incluindo filmes, séries e jogos.


3. /films

Função: Lista filmes disponíveis na API.

Parâmetros:

page → número da página.


Retorno: Lista de filmes com nome, imagem e ano de lançamento.



---

Linguagens e Tecnologias

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
