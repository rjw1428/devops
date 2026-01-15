vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

require("rwilk_conf.lazy_init")
require("rwilk_conf.set")
require("rwilk_conf.remap")

