
uni_str = '\uad8c\ud55c\uc774 \uc5c6\ub294 \uc2e0\uccad\uc785\ub2c8\ub2e4.'

#print eval("u'"+uni_str+"'")

uni_res = unicode()

for c in uni_str.split('\u'):
	if c == '':
		continue
	codepoint = int(c[0:4], 16)
	print codepoint
	uni_res += unichr(codepoint) + unicode(c[4:None])

print uni_res