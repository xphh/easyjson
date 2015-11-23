--[[
The MIT License (MIT)

Copyright (c) 2014 Ping.X

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]
local json = require "easyjson"

local t = {
	f1 = 1,
	f2 = 'xx"cc"xx',
	g1 = nil,
	g2 = true,
	g3 = false,
	f3 = {
		{
			xxx = 1,
			yyy = '222'
		},
	},
	f4 = {
		h1 = 789,
		h2 = 'hjk'
	}
}

local str = json.encode(t, true)
print(str)

local tt, err = json.decode(str)
if not tt then
	print(err)
else
	print(json.encode(tt, true, 0, {ind='  ', line='\n'}))
end
