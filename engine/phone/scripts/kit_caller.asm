KitsPhoneCallerScript:
	random 4
	ifequal 0, .zero
	ifequal 1, .one
	ifequal 2, .two
	ifequal 3, .three
	ifequal 4, .four

.zero
	farwritetext KitsPhoneCallerText0
	end

.one
	farwritetext KitsPhoneCallerText1
	end

.two
	farwritetext KitsPhoneCallerText2
	end

.three
	farwritetext KitsPhoneCallerText3
	end

.four
	farwritetext KitsPhoneCallerText4
	end
