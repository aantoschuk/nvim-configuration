# nvim configuration

My Neovim configuration that I use for everyday coding.

## About

In this README, I'll explain how to use it and which plugins I use.

## Configuration Structure

### Main Configuration File (init.lua)

The primary configuration file for Neovim is `init.lua`, which serves as the entry point for all settings, plugins, and custom configurations.

Imported Folder (alexander)
In addition to the `main init.lua`, there is an imported folder named alexander,
which contains modular configuration files that help organize the setup.
This structure promotes cleaner, more maintainable configurations by separating different aspects of the Neovim setup—such as settings,
plugins, and more—into dedicated Lua files within the alexander folder.

`set.lua`: This file contains my Neovim settings, such as relative line numbers, tab configurations, and other options.

`remap.lua`: This file defines my custom key mappings.

`lazy.lua`: Since I use Lazy as my package manager, this file handles its configuration and imports my plugins.

`colors.lua`: This file manages theme configuration.

`plugins/`: This directory contains configurations for specific plugins, which are later imported and used in lazy.lua.

## Keymaps

I have my own custom [keymaps](./docs/keymaps.md) in ```lua/alexander/remap.lua```,
which help me be more productive by improving file navigation and plugin usage.

## Example

I use standart MacOS Terminal with tmux with the background image

![Example of nvim configuration look](./assets/nvim-example.png)

