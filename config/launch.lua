local platform = require("utils.platform")()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { "pwsh" }
  options.launch_menu = {
    { label = " PowerShell v7", args = { "pwsh" } },
    { label = " Cmd", args = { "cmd" } },
    { label = " Nushell", args = { "nu" } },
    {
      label = " GitBash",
      args = { "C:\\soft\\Git\\bin\\bash.exe" },
    }
  }
elseif platform.is_mac then
  options.default_prog = { "zsh" }
  options.launch_menu = {
    { label = " Zsh", args = { "zsh" } },
    { label = " Bash", args = { "bash" } },
    { label = " Nushell", args = { "/opt/homebrew/bin/nu" } },
    { label = " Fish", args = { "/opt/homebrew/bin/fish" } },
  }
end

return options
