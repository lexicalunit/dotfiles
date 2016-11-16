# Markdown files should always be soft wrapped.
path = require 'path'
atom.workspace.observeTextEditors (editor) ->
  editorView = atom.views.getView(editor)
  if path.extname(String(editor.getPath())) is '.md'
    editor.setSoftWrapped(true)
