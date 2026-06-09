return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- Depends on the plugin you already installed
      { "nvim-lua/plenary.nvim" }, -- Required utility library
    },
    opts = {
      debug = false, -- Set to true if you need to see error logs
      -- Sets the chat default response language to Portuguese
      prompts = {
        Language = {
          prompt = "Por favor, responda sempre em português.",
        },
      },
    },
    keys = {
      -- Keyboard shortcuts (keymaps) to make daily use easier
      { "<leader>cb", "<cmd>CopilotChatToggle<cr>", desc = "Abrir/Fechar Copilot Chat" },
      {
        "<leader>ce",
        "<cmd>CopilotChatExplain<cr>",
        desc = "Copilot Chat - Explicar código selecionado",
        mode = { "n", "v" },
      },
      {
        "<leader>cr",
        "<cmd>CopilotChatReview<cr>",
        desc = "Copilot Chat - Revisar código (Code Review)",
        mode = { "n", "v" },
      },
      {
        "<leader>cf",
        "<cmd>CopilotChatFix<cr>",
        desc = "Copilot Chat - Corrigir bugs no código",
        mode = { "n", "v" },
      },
      {
        "<leader>co",
        "<cmd>CopilotChatOptimize<cr>",
        desc = "Copilot Chat - Otimizar performance do código",
        mode = { "n", "v" },
      },
    },
  },
}
