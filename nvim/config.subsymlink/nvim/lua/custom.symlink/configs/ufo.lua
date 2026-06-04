require("ufo").setup({
  provider_selector = function(bufnr, ft, buftype)
    return {"lsp", "indent"}
  end
})
