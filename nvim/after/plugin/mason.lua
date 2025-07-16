-- Set up Mason package manager
local mason_status, mason = pcall(require, "mason")
if not mason_status then
    print("Mason not found, please run :PackerSync first")
    return
end

-- Basic Mason setup
mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Try to set up mason-lspconfig
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    print("mason-lspconfig not found, please run :PackerSync first")
    return
end

-- Configure Mason to install specific LSPs
mason_lspconfig.setup({
    -- Automatically install these LSPs
    ensure_installed = {
        "clangd",        -- C/C++
        "ts_ls",      -- TypeScript/JavaScript (standard name)
        "rust_analyzer", -- Rust
        "jsonls",        -- JSON with linting and schema support
        "pyright",       -- Python
        "cssls",         -- CSS
    },
    automatic_installation = true,
})

-- Optional: Automatically install other tools (formatters, linters, etc)
local mason_tool_installer_status, mason_tool_installer = pcall(require, "mason-tool-installer")
if mason_tool_installer_status then
    -- If the plugin is available, configure it
    mason_tool_installer.setup({
        auto_update = true,
        run_on_start = true,
    })
end
