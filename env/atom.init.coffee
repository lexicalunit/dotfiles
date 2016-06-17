# Markdown files should always be soft wrapped.
path = require 'path'
atom.workspace.observeTextEditors (editor) ->
  editorView = atom.views.getView(editor)
  if path.extname(editor.getPath()) is '.md'
    editor.setSoftWrapped(true)
