easyjson
========

Lua table encode/decode to/from Json string in pure Lua based on Lua string only

The source code is short enough with no more than 300 lines but with no performance guarantee.

Usage:

	local json = require "easyjson"

	-- encode Lua table to Json string
	local str = json.encode(t)
	
	-- encode Lua table to Json string in formatted
	local str = json.encode(t, true)
	
	-- decode Json string to Lua table, return table and error message
	local tt, err = json.decode(str)
