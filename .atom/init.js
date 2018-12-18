// startup immediately with the atom-notes application
atom.packages.onDidActivateInitialPackages(() => {
  const workspace = atom.views.getView(atom.workspace)
  atom.commands.dispatch(workspace, 'atom-notes:toggle')
})
