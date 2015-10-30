'Coerced user input into appropriate format ##-##-##-##-###-### 


Private Sub parcelBox_Change()
Dim RegEx As Object, tStr As String
Set RegEx = CreateObject("vbscript.regexp")
RegEx.Global = True
RegEx.Pattern = "\D"
tStr = RegEx.Replace("00-00-00-00-000-000", "")
parcelBox.Text = Left(tStr, 2) & IIf(Len(tStr) > 2, "-" & Mid(tStr, 3, 2), "") & _
IIf(Len(tStr) > 4, "-" & Mid(tStr, 5, 2), "") & IIf(Len(tStr) > 6, "-" & Mid(tStr, 7, 2), "") & _
IIf(Len(tStr) > 8, "-" & Mid(tStr, 9, 3), "") & IIf(Len(tStr) > 11, "-" & Mid(tStr, 12, 3), "")

Set RegEx = Nothing
End Sub
