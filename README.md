# Fishify · Redesign

Redesenho do site da [Fishify](https://fishify.pt) — peixe e marisco fresco da Lota de Peniche, entregue em casa na Grande Lisboa, Margem Sul, Leiria, Santarém e Zona Oeste.

Empresa familiar fundada em 2019 por Rui Santos e Beatriz Pinto, com presença nos Mercados Municipais do Bombarral e Marinha Grande.

## Estrutura

```
fishify/
├── index.html        # Página principal (hero, como funciona, pescado, sobre, FAQ)
├── menu.html         # Catálogo completo: 68 produtos com pesquisa, filtros e gerador de mensagem WhatsApp
├── i18n.js           # Sistema de tradução (PT · EN · ES · FR · ZH) + bandeiras SVG
├── owners.png        # Foto dos fundadores (hero da homepage)
└── imgs/             # 67 placeholders SVG dos produtos (fallback se as imagens reais falharem)
```

## Funcionalidades

- **Multilíngue**: Português (default), Inglês, Espanhol, Francês e Chinês. Seletor com bandeiras vetoriais no topo, persistente em `localStorage`, detecção automática do idioma do browser.
- **Menu interativo**: 68 produtos com pesquisa em tempo real, filtros (Tudo, Peixe, Marisco, Hoje), controlo de quantidades (em kg, passos de 0.5).
- **Carrinho + WhatsApp**: barra inferior fixa com total estimado; o botão "Enviar encomenda" gera automaticamente uma mensagem formatada para o WhatsApp da Fishify (+351 934 243 797).
- **Imagens dos produtos**: usam os URLs reais do `fishify.pt`, com placeholders SVG locais como fallback automático (via `onerror`).
- **Responsivo**: layout adaptado de desktop a mobile, com foto dos fundadores sempre visível por inteiro.
- **Acessível**: tags semânticas, `aria-label`, `data-i18n` para tradução automática de todos os textos.

## Stack

HTML/CSS/JavaScript puro, sem build steps, sem dependências de runtime. Apenas CDN para:
- Google Fonts (Fraunces + Inter)
- Tabler Icons (webfont)

## Instalação

Basta servir os ficheiros estaticamente. Por exemplo, localmente:

```bash
python3 -m http.server 8000
# Depois abrir http://localhost:8000
```

Para produção, qualquer servidor web ou serviço de hosting estático serve (GitHub Pages, Netlify, Vercel, Cloudflare Pages, Apache, Nginx).

## Contactos

- WhatsApp: [+351 934 243 797](https://wa.me/351934243797)
- Email: geral@fishify.pt
- Instagram: [@fishify.pt](https://www.instagram.com/fishify.pt/)
- Site original: [fishify.pt](https://fishify.pt)
