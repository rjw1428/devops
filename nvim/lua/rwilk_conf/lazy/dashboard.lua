return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header (You can put any ASCII art here!)
    dashboard.section.header.val = {
      [[     ,. -  .,                 ,., '                              ,.-·.              ,.  '                            _  °  ,]],
      [[   ,' ,. -  .,  `' ·,        ,'   '`;                 ,·;'        /    ;'\'          /   ';\             ,.·,       :´¨   ;\   ,]],
      [[   '; '·~;:::::'`,   ';\     ;    ,':\     ,'´¨';     '; ;'\      ;    ;:::\       ,'   ,'::'\          ,'   ,'\     .'´ ,·´::'\  ,]],
      [[    ;   ,':\::;´  .·´::\'   ;    ';::'\  ,'   ,'\   ,' ,::'\    ';    ;::::;'     ,'    ;:::';'         ;'  ,'::\ .·' .·´::::::;' ,]],
      [[    ;  ·'-·'´,.-·'´:::::::';  ',    ';::;','    ,'::\,'  ,':::;     ;   ;::::;      ';   ,':::;'          ;  ;::·´ .·´:::::::;·´  ,]],
      [[  ;´    ':,´:::::::::::·´'    ';   ';:';,'     ;:::;' ,'::::;'    ';  ;'::::;       ;  ,':::;' '         ';  '´   ;´::::::;·´      ,]],
      [[   ';  ,    `·:;:-·'´          ';  ';:;' ,:';  ';:;'  ,'::::;     ;  ';:::';       ,'  ,'::;'            ;  ;\'   '\::;·´          ,]],
      [[   ; ,':\'`:·.,  ` ·.,          ';  '·' ,'::';  '·´ ,':::::;      ';  ;::::;'      ;  ';_:,.-·'´';\'    ;  ;:\:'·.  '·., ,.·';'     ,]],
      [[   \·-;::\:::::'`:·-.,';         \   /::::;\·-·'´\::::;·''       \*´\:::;‘      ',   _,.-·'´:\:\‘   ;_;::'\::`·._,.·'´:\'     ,]],
      [[    \::\:;'` ·:;:::::\::\'        \'´\:::;'  '\::::'\;'´           '\::\:;'        \¨:::::::::::\';   \::'\:;' '·::\::\:::::'\    ,]],
      [[     '·-·'       `' · -':::''        '\:\:/     '·-·'´'               `*´‘          '\;::_;:-·'´‘      '\::\     `·'\::\;:·'´'    ,]],
      [[                                    '´                                            '¨                 ¯          ¯'        , ]],
    }

    -- Define menu buttons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("p", "  Recent projects", ":Telescope projects <CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua <CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end,
}