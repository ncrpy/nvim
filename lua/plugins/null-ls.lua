local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

null_ls.setup({
    sources = {
    }
})

local verilatorlint = {
    method = null_ls.methods.DIAGNOSTICS,
    factory = helpers.generator_factory,
    filetypes = { "verilog", "systemverilog" },
    generator = null_ls.generator({
        command = "verilator",
        args = {
            "--lint-only",
            "-Wall",
            "-Wpedantic",
            "-Wno-DECLFILENAME",
            "-y",
            "$DIRNAME",
            "$FILENAME",
        },
        to_stdin = false,
        to_temp_file = true,
        from_stderr = true,
        format = "line",
        use_cache = false,
        on_output = helpers.diagnostics.from_pattern(
            [[(%%%a*).*%s:*(.-):%s*(.-):%s*(.-):%s*(.*)]],
            { "severity", "filename", "row", "col", "message" },
            {
                severities = {
                    ["%Error"] = helpers.diagnostics.severities.error,
                    ["%Warning"] = helpers.diagnostics.severities.warning,
                    ["%Note"] = helpers.diagnostics.severities.information,
                },
            }
        )
    })
}
null_ls.register(verilatorlint)
