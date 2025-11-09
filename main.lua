local function spacer()
	return ui.Span(" ")
end

local function nlink()
	local h = cx.active.current.hovered
	if not h then
		return ui.Span("")
	end

	if not h.cha.nlink then
		return ui.Span("")
	end

	return ui.Span(h.cha.nlink .. " ")
end

return {
	setup = function()
		

		Status:children_add(spacer, 900, Status.RIGHT)
		Status:children_add(nlink, 1200, Status.RIGHT)

	end,
}
