set x = WScript.CreateObject("WScript.Shell")
mymessage = inputbox("Enter message here")
mymessage = StrReverse(mymessage)


x.run "%windir%\notepad"
wscript.sleep 1000
x.sendkeys encode(mymessage) 


function encode(s)
For i = 1 To Len(s)
newtxt = Mid(s,i,1)
newtxt = Chr(Asc(newtxt)+5-10-20+10+3)
coded = coded & newtxt
Next
encode = coded
End Function