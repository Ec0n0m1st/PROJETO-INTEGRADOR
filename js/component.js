const template = `
    <div class="global-bg">
        <div class="global-image">
            <img src="@imagem" alt="">
            <span class="font-2 bold">@preco</span>
        </div>
        <div class="global-content">
            <h2 class="font-1">@nome</h2>
            <p class="font-2 standard">@descricao</p>
        </div>
    </div>
`;

export const render = (entity) => {
  const text = template
    .replace("@imagem", entity.imagem)
    .replace("@nome", entity.nome)
    .replace("@preco", `R$ ${(entity.preco ?? 0).toFixed(2)}`)
    .replace("@descricao", entity.descricao);

  const parser = new DOMParser();
  return parser.parseFromString(text, "text/html").body.firstChild;
};
