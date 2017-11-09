// const path = require('path')

// Markdown files should always be soft wrapped.
// atom.workspace.observeTextEditors((editor) => {
//   editorView = atom.views.getView(editor)
//   if (path.extname(String(editor.getPath())) === '.md') {
//     editor.setSoftWrapped(true)
//   }
// })

// Hide tree view by default on editor startup.
// See: https://discuss.atom.io/t/hide-treeview-by-default/7718/38
// const workspaceView = atom.views.getView(atom.workspace)
// workspaceView.classList.add('loading')
// atom.packages.onDidActivateInitialPackages(() => {
//   const workspaceView = atom.views.getView(atom.workspace)
//   atom.commands.dispatch(workspaceView, 'tree-view:toggle')
//   workspaceView.classList.remove('loading')
// })
