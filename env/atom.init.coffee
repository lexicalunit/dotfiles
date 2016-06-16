# Markdown files should always be soft wrapped.
path = require 'path'
atom.workspace.observeTextEditors (editor) ->
  editorView = atom.views.getView(editor)
  if path.extname(editor.getPath()) is '.md'
    editor.setSoftWrapped(true)

# shift-tab force inserts tab if soft tabs is disabled,
# or else the appropriate number of spaces for a tab.
atom.commands.add 'atom-workspace',
  'editor:force-tab': ->
    editor = atom.workspace.getActiveTextEditor()
    if editor?
      if editor.getSoftTabs()
        pos = editor.getCursorBufferPosition()
        tabLength = editor.getTabLength()
        spacesCount = tabLength - (pos.column % tabLength) + 1
        editor.insertText(Array(spacesCount).join(' '))
        return
      editor.insertText('\t')
