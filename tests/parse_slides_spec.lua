local parse = require("present")._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
	it("should parse an empty file", function()
		eq({
			slides = {
				{
					title = "",
					body = {},
					blocks = {},
				},
			},
		}, parse({}))
	end)

	it("should parse an file with one slide", function()
		eq(
			{
				slides = {
					{
						title = "# This is the first slide",
						body = {
							"This is the body",
							"```lua",
							"print('Hello, world!')",
							"```",
						},
						blocks = {
							{
								language = "lua",
								body = "print('Hello, world!')",
							},
						},
					},
				},
			},
			parse({
				"# This is the first slide",
				"This is the body",
				"```lua",
				"print('Hello, world!')",
				"```",
			})
		)
	end)
end)
