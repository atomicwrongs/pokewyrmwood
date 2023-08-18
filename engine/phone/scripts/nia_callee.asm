NiaPhoneCalleeScript:
	checktime MORN
	iftrue .morngreet
	checktime DAY
	iftrue .daygreet
	farwritetext NiaPhoneNiteGreetingText
	sjump .main

.morngreet
	farwritetext NiaPhoneMornGreetingText
	sjump .main

.daygreet
	farwritetext NiaPhoneDayGreetingText
	sjump .main

.main
	promptbutton
	farwritetext NiaPhoneGenericText
	sjump .hangup

.hangup:
	promptbutton
	checktime MORN
	iftrue .mornbye
	checktime DAY
	iftrue .daybye
	farwritetext NiaPhoneHangUpNightText
	end

.mornbye
	farwritetext NiaPhoneHangUpMornText
	end

.daybye
	farwritetext NiaPhoneHangUpDayText
	end
