# Markdown files should always be soft wrapped.
path = require 'path'
atom.workspaceView.eachEditorView (editorView) ->
  editor = editorView.getEditor()
  if path.extname(editor.getPath()) is '.md'
    editor.setSoftWrapped(true)

# shift-tab force inserts tab if soft tabs is disabled,
# or else the appropriate number of spaces for a tab.
atom.workspaceView.command 'editor:force-tab', ->
    editor = atom.workspace.getActiveEditor()
    if editor?
        if editor.getSoftTabs()
            line = editor.getCursor().getCurrentBufferLine()
            n_spaces = editor.getTabLength() - (line.length % editor.getTabLength());
            editor.insertText(Array(n_spaces + 1).join(' '))
        else
            editor.insertText('\t')
