MinaPhoneCallerScript:
	random 4
	ifequal 0, .zero
	ifequal 1, .one
	ifequal 2, .two
	ifequal 3, .three
	ifequal 4, .four

.zero
	farwritetext MinaPhoneCallerText0
	end

.one
	farwritetext MinaPhoneCallerText1
	end

.two
	farwritetext MinaPhoneCallerText2
	end

.three
	farwritetext MinaPhoneCallerText3
	end

.four
	farwritetext MinaPhoneCallerText4
	end
