return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- Pindahkan deklarasi conf ke atas agar dapat diakses oleh semua fungsi
		local conf = require("telescope.config").values

		-- REQUIRED
		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end)

		vim.keymap.set("n", "<C-n>", function()
			local make_finder = function()
				local paths = {}
				-- Gunakan harpoon:list().items secara langsung
				for _, item in ipairs(harpoon:list().items) do
					table.insert(paths, item.value)
				end

				return require("telescope.finders").new_table({
					results = paths,
				})
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon Delete",
					finder = make_finder(),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
					attach_mappings = function(prompt_buffer_number, map)
						-- Ekstraksi fungsi penghapusan
						local delete_mark = function()
							local state = require("telescope.actions.state")
							local selected_entry = state.get_selected_entry()
							local current_picker = state.get_current_picker(prompt_buffer_number)

							local harpoon_list = harpoon:list()

							-- Validasi preventif: Hentikan eksekusi jika tidak ada entri yang valid
							if not selected_entry or not harpoon_list.items[selected_entry.index] then
								return
							end

							-- Penghapusan memori secara presisi menggunakan API bawaan Lua
							table.remove(harpoon_list.items, selected_entry.index)

							-- Pemuatan ulang antarmuka dengan parameter pengosongan (reset)
							-- untuk mencegah kursor menunjuk ke indeks yang sudah tidak ada
							current_picker:refresh(make_finder(), { reset_prompt = true })
						end

						-- Petakan ke mode normal ('n') dan insert ('i') untuk kenyamanan penggunaan
						map("n", "dd", delete_mark)
						map("i", "dd", delete_mark)

						return true
					end,
				})
				:find()
		end)

		settings = {
			save_on_toggle = true,
			sync_on_ui_close = true,
		}

		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		vim.keymap.set("n", "<C-e>", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })
	end,
}
