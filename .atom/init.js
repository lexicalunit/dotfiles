// startup immediately with the atom-notes application

function notes() {
  const workspace = atom.views.getView(atom.workspace)
  atom.commands.dispatch(workspace, 'atom-notes:toggle')
}

atom.packages.onDidActivateInitialPackages(() => {
    notes()

    atom.workspace.onDidChangeActiveTextEditor(() => {
      if (!atom.workspace.getActivePaneItem()) notes()
    })
})
