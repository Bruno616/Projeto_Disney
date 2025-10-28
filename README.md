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

### Link Protótipo Figma:
https://www.figma.com/design/YoEX8cHAQDiw9txxh1T6T6/Untitled?node-id=0-1&t=aVYY321taYI8Ff0k-1

### Mapa de Navegação:
<img width="973" height="602" alt="{33D55A79-88B2-4651-80EB-DB72A1CB4ECC}" src="https://github.com/user-attachments/assets/0aae77c9-fe4d-48b2-96a3-117e0dd2c99e" />

---

## Funcionalidades Principais

1. **Home:** Exibe os personagens em destaque (“Personagens top”).  
2. **Gêneros:** Mostra produções separadas por categorias (Infantil, Aventura, Musical, etc.).  
3. **Detalhes:** Mostra imagem, filmes/Series que participou e nome original.  
4. **Créditos:** Exibe as informações da API e do grupo.
5. **Configurações:** Exibe opcões para configuração e contato para suporte.

---

## API Utilizada

O aplicativo consome dados da **Disney API**, uma API pública que fornece informações sobre personagens do universo Disney.

URL Base da API

https://api.disneyapi.dev/

Documentação Oficial

[https://disneyapi.dev/docs/](https://disneyapi.dev/docs/)

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
- [Home](https://github.com/Bruno616/Projeto_Disney/wiki)
- [1. Análise API da Disney](https://github.com/Bruno616/Projeto_Disney/wiki/1.-Analise-API-da-Disney)
- [2. Descrição do Aplicativo](https://github.com/Bruno616/Projeto_Disney/wiki/2.-Descrição-do-Aplicativo)
- [3. Protótipo e Navegação](https://github.com/Bruno616/Projeto_Disney/wiki/3.-Protótipo-e-Navegação)
- [4. Créditos e Referências](https://github.com/Bruno616/Projeto_Disney/wiki/4.-Créditos-e-Referências)

