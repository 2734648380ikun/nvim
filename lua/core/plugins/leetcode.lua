return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	dependencies = {
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- configuration goes here
		cn = { -- leetcode.cn
			enabled = true, ---@type boolean
			translator = true, ---@type boolean
			translate_problems = true, ---@type boolean
		},
		injector = { ---@type table<lc.lang, lc.inject>
			["python3"] = {
			},
			["cpp"] = {
				-- #include<bits/stdc++.h>
				before = { [[
#ifndef _GLIBCXX_NO_ASSERT
#include <cassert>
#endif
#include <cctype>
#include <cerrno>
#include <cfloat>
#include <ciso646>
#include <climits>
#include <clocale>
#include <cmath>
#include <csetjmp>
#include <csignal>
#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>

#if __cplusplus >= 201103L
#include <ccomplex>
#include <cfenv>
#include <cinttypes>
#include <cstdbool>
#include <cstdint>
#include <ctgmath>
#include <cwchar>
#include <cwctype>
#endif

// C++
#include <algorithm>
#include <bitset>
#include <complex>
#include <deque>
#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
#include <ios>
#include <iosfwd>
#include <iostream>
#include <istream>
#include <iterator>
#include <limits>
#include <list>
#include <locale>
#include <map>
#include <memory>
#include <new>
#include <numeric>
#include <ostream>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <streambuf>
#include <string>
#include <typeinfo>
#include <utility>
#include <valarray>
#include <vector>

#if __cplusplus >= 201103L
#include <array>
#include <atomic>
#include <chrono>
#include <condition_variable>
#include <forward_list>
#include <future>
#include <initializer_list>
#include <mutex>
#include <random>
#include <ratio>
#include <regex>
#include <scoped_allocator>
#include <system_error>
#include <thread>
#include <tuple>
#include <typeindex>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>
#endif
				]],
					"using namespace std;",
				},
				after = { [[int main(){

				}]], },

			},
			["java"] = {
				before = "import java.util.*;",
			},
		},
		keys = {
			toggle = { "<Esc><Esc>", desc = { "toggle current page" } }, ---@type string|string[]
			confirm = { "<CR>" }, ---@type string|string[]
			reset_testcases = "<Leader>r", ---@type string

			use_testcase = "U", ---@type string
			focus_testcases = "H", ---@type string
			focus_result = "L", ---@type string
		},
		hooks = {
			---@type fun()[]
			["enter"] = { function()
				vim.keymap.set("n", "<Leader>lr", ":Leet run<CR>", { desc = "运行代码测试" })
				vim.keymap.set("n", "<Leader>lc", ":Leet console<CR>", { desc = "打开控制台" })
				vim.keymap.set("n", "<Leader>llh", ":Leet list difficulty=hard<CR>", { desc = "打开困难问题列表" })
				vim.keymap.set("n", "<Leader>lRh", ":Leet random difficulty=hard<CR>", { desc = "随机一个困难问题" })
			end },
			---@type fun(question: lc.ui.Question)[]
			["question_enter"] = {},

			---@type fun()[]
			["leave"] = {
				function()
				end
			},
		},
	},
}
